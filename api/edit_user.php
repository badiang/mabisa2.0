<?php

declare(strict_types=1);
// ini_set('display_errors', 0); // Disable error display
// $disableLogging = true; // comment out to disable
require_once 'logging.php';
require_once '../db/db.php';
require_once '../api/audit_log.php';
require_once 'update_perms.php';
require_once 'get_all_perm_cols.php';
$log = new Audit_log($pdo);

try {
  if ($_SERVER['REQUEST_METHOD'] != 'POST') throw new Exception('Invalid request method.');
  if (empty($_POST['details']['id']) && empty($_POST['id'])) throw new Exception('No ID given.');
  // get post vars
  /** @var array */
  $details = empty($_POST['details']) ? [] : $_POST['details'];
  /** @var array */
  $genPerms = empty($_POST['genPerms']) ? [] : $_POST['genPerms'];
  /** @var array */
  $barPerms = empty($_POST['barPerms']) ? [] : $_POST['barPerms'];

  // assign individual variables
  /** @var int|string */
  $id = empty($details['id'])
    ? (empty($_POST['id']) ? null : $_POST['id'])
    : $details['id'];
  if (empty($id)) throw new Exception('No ID given.');
  /** @var string */
  $fullName  = !empty($details['fullName'])
    ? trim($details['fullName'])
    : (!empty($_POST['fullName']) ? trim($_POST['fullName']) : null);

  /** @var string */
  $username  = !empty($details['username'])
    ? trim($details['username'])
    : (!empty($_POST['username']) ? trim($_POST['username']) : null);

  /** @var string */
  $email     = !empty($details['email'])
    ? trim($details['email'])
    : (!empty($_POST['email']) ? trim($_POST['email']) : null);

  /** @var string */
  $mobileNum = !empty($details['mobileNum'])
    ? substr(trim((string)$details['mobileNum']), 3)
    : (!empty($_POST['mobileNum']) ? substr(trim((string)$_POST['mobileNum']), 3) : null);

  /** @var string */
  $pass      = !empty($details['pass'])
    ? trim($details['pass'])
    : (!empty($_POST['pass']) ? trim($_POST['pass']) : null);

  // if self was specified, use cookie id
  if ($id == 'self') $id = $_COOKIE['id'];

  // initialize other vars
  global $pdo;
  $shouldExecute = false;
  $sql = 'UPDATE users SET ';
  $params = [':id' => $id];

  // append field(s) to update and set params
  if ($fullName) {
    $sql .= 'full_name = :fullName, ';
    $params[':fullName'] = $fullName;
    $shouldExecute = true;
  }
  if ($username) {
    $sql .= 'username = :username, ';
    $params[':username'] = $username;
    $shouldExecute = true;
  }
  if ($email) {
    $sql .= 'email = :email, ';
    $params[':email'] = $email;
    $shouldExecute = true;
  }
  if ($mobileNum) {
    $sql .= 'mobile_num = :mobileNum, ';
    $params[':mobileNum'] = $mobileNum;
    $shouldExecute = true;
  }
  if ($pass) {
    $sql .= 'password = :pass, ';
    $params[':pass'] = password_hash($pass, PASSWORD_BCRYPT);
    $shouldExecute = true;
  }

  $pdo->beginTransaction();
  // will execute only if at least on parameter was passed
  if ($shouldExecute) {
    // remove trailing space and comma on sql statement
    $sql = substr($sql, 0, -2);

    // append the id
    $sql .= ' where id = :id;';

    // EXECUTE
    writeLog('statement was:');
    writeLog($sql);
    writeLog('params was:');
    writeLog($params);
    $stmt = $pdo->prepare($sql);
    $stmt->execute($params);
  } else {
    writeLog('not shouldExecute!!');
  }

  // get all perms
  $allPerms = getPermTableNames($pdo);

  // get the bar perms id of current user (multiple)
  if (!empty($barPerms)) {
    // get all barangays with all indicators, with its permissions id, or null
    $stmt = $pdo->prepare('SELECT
  rb.brgyid AS brgyid,
  i.keyctr AS indid,
  urb.permission_id AS permid
FROM refbarangay rb
CROSS JOIN maintenance_area_indicators i
LEFT JOIN user_roles_barangay urb
  ON urb.barangay_id = rb.brgyid
  AND urb.indicator_id = i.keyctr
  AND urb.user_id = :id;
');
    $stmt->execute([':id' => $id]);
    $urbPerms = $stmt->fetchAll();

    $stmt = $pdo->prepare('SELECT
  urb.permission_id AS permid
FROM user_roles_barangay as urb
JOIN permissions p ON urb.permission_id = p.id
  WHERE urb.user_id = :id;
  ');
    $stmt->execute([':id' => $id]);
    $oldPerms = $stmt->fetchAll();
    // some logging
    // writeLog('BAR PERM IDs WAS');
    // writeLog($urbPerms);
    // writeLog('BAR PERMS WAS');
    // writeLog($barPerms);

    // update bar perms
    updateMultiBarPerms($pdo, $urbPerms, array_keys($barPerms), $oldPerms, $allPerms, (int)$id);
  }

  // get the gen perms id of current user
  if (!empty($genPerms)) {
    writeLog('GEN PERMS WAS');
    writeLog($genPerms);
    // each user should only have one global/general perms
    $sql = 'SELECT permissions_id AS genID FROM user_roles WHERE user_id = :id LIMIT 1';

    // actual fetch
    $stmt = $pdo->prepare($sql);
    $stmt->execute([':id' => $id]);
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    writeLog('GEN PERM ID WAS');
    writeLog($result);

    // update gen perms
    $genPermsID = updatePerms($pdo, isset($result['genID']) ? $result['genID'] : null, array_keys(array_filter($genPerms, function ($perm) {
      return $perm != 'selectAllGen';
    }, ARRAY_FILTER_USE_KEY)), $allPerms, true);
    if (!empty($genPermsID)) {
      writeLog('SQL params: ');
      writeLog([
        ':user_id' => $id,
        ':permissions_id' => $genPermsID
      ]);
      // insert the new entry into user_roles
      $sql = 'INSERT INTO user_roles(user_id, permissions_id) VALUES (:user_id,  :permissions_id)';
      $stmt = $pdo->prepare($sql);
      $stmt->execute([
        ':user_id' => $id,
        ':permissions_id' => $genPermsID
      ]);
    }
  }

  $pdo->commit();
  //logging
  $log->userLog('Edited a User with ID: ' . $id . 'to Username: ' . $username . ', Fullname: ' . $fullName . ', Email: ' . $email . ', and Mobile Num: ' . $mobileNum);
} catch (\Throwable $th) {
  if ($pdo->inTransaction()) {
    $pdo->rollBack();
  }
  http_response_code(500);
  writeLog($th);
  echo json_encode($th->getMessage(), JSON_PRETTY_PRINT);
}

function updateMultiBarPerms(\PDO $pdo, array $urbPerms, array $newPerms, array $oldPerms, array $allPerms, int $userID)
{
  writeLog('IN updateMultiBarPerms');
  // create new array that is the difference from old perms and new perms
  $permsToRemove = [];
  writeLog('new perms:');
  writeLog($newPerms);
  // array of only perm ids from new perms
  $newPermsIDs = array_column($newPerms, 'permid');
  foreach ($oldPerms as $oldPerm) {
    $oldPermID = $oldPerm['permid'];
    // if old perms is not in new, remove it
    if (!in_array($oldPermID, $newPerms)) {
      $permsToRemove[] = $oldPermID;
    }
  }

  // remove all perms marked for removal
  if (!empty($permsToRemove)) {
    writeLog('Perms to remove');
    writeLog($permsToRemove);
    // generate question marks equal to the number of perms to remove. Separate by comma
    $placeholders = implode(',', array_fill(0, count($permsToRemove), '?'));

    // Delete from user_roles_barangay
    // $sql = "DELETE FROM user_roles_barangay WHERE permission_id IN ($placeholders) AND user_id = ?";
    $sql = "DELETE urb, p 
FROM user_roles_barangay urb 
JOIN permissions p ON urb.permission_id = p.id 
WHERE urb.permission_id IN ($placeholders) AND urb.user_id = ?;
";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([...$permsToRemove, $userID]);

    // remove permissions
    // $sql = "DELETE FROM permissions WHERE id IN ($placeholders)";
    // $stmt = $pdo->prepare($sql);
    // $stmt->execute([...$permsToRemove, $userID]);
  }

  // create a new array where permissions are groups per indicator, and indicators are grouped per barangay
  /** @var array */
  $compiledNewPerms = [];
  foreach ($newPerms as $newPermsEntry) {
    writeLog($newPermsEntry);
    // separate string to variables
    $entry = explode('--', $newPermsEntry);
    $barangayID = $entry[0];
    $indicatorID = $entry[1];
    $permissionCol = $entry[2];

    // add permission column
    $compiledNewPerms[$barangayID][$indicatorID][] = $permissionCol;
  }

  writeLog($compiledNewPerms);
  $allPerms = getPermTableNames($pdo);

  // loop barangays
  foreach ($compiledNewPerms as $barangayID => $indicators) {
    // loop indicators per barangay
    foreach ($indicators as $indicatorID => $permissions) {
      // writeLog('urb result is: ');
      // writeLog($urbRes);
      foreach ($urbPerms as $entry) {
        if ($entry['brgyid'] == $barangayID && $entry['indid'] == $indicatorID) {
          writeLog('Updating: ' . $barangayID . ' ' . $indicatorID);
          $permID = updatePerms($pdo, $entry['permid'], array_map(fn($value) => 'assessment_' . $value, $permissions), $allPerms, true);
          if (!empty($permID)) {
            writeLog('SQL params: ');
            writeLog([
              ':user_id' => $userID,
              ':barangay_id' => $entry['brgyid'],
              ':indicator_id' => $entry['indid'],
              ':permission_id' => $permID
            ]);
            // insert the new entry into user_roles_barangay
            $sql = 'INSERT INTO user_roles_barangay(user_id, barangay_id, indicator_id, permission_id) VALUES (:user_id, :barangay_id, :indicator_id, :permission_id)';
            $stmt = $pdo->prepare($sql);
            $stmt->execute([
              ':user_id' => $userID,
              ':barangay_id' => $entry['brgyid'],
              ':indicator_id' => $entry['indid'],
              ':permission_id' => $permID
            ]);
          }
        }
      }
    }
  }
}
