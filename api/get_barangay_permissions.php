<?php

declare(strict_types=1);
$useAsImport; // for get_permissions.php
$permsOnly = false;
require 'logging.php';
require_once '../db/db.php';
require_once 'get_permissions.php'; // gets the role permissions

try {
  if ($_SERVER['REQUEST_METHOD'] != 'POST') throw new Exception('Invalid request.');
  if (empty($_POST['role_id'])) throw new Exception('Invalid ID.');
  if ($_POST['role_id'] == '') die;
  $result = [];

  // check if role allows barangay
  $sql = "SELECT allow_barangay FROM roles where id = :id";
  $stmt = $pdo->prepare($sql);
  $stmt->execute([':id' => $_POST['role_id']]);
  $role = $stmt->fetch(PDO::FETCH_ASSOC);

  // writeLog($role);
  if ($role['allow_barangay'] != 1) exit;

  // get all barangays
  $sql = "SELECT brgyid, brgyname FROM refbarangay";
  $stmt = $pdo->prepare($sql);
  $stmt->execute();
  $barangays = $stmt->fetchAll(PDO::FETCH_ASSOC);
  // writeLog('Barangays was:');
  // writeLog($barangays);

  // get all permissions that start with "assessment"
  $sql = "describe permissions;";
  $query = $pdo->query($sql);
  $allPermissions = [];
  // add all permissions to the column
  if ($query->rowCount() <= 0) throw new Exception('describe permissions didn\'t return anything');
  while ($col = $query->fetch(PDO::FETCH_ASSOC)) {
    // writeLog('Col is: ');
    // writeLog($col);
    // add if assessment word is in it
    if (str_contains($col['Field'], 'assessment')) {
      $allPermissions[] = $col['Field'];
    }
  }
  // writeLog('All permissions was:');
  // writeLog($allPermissions);

  // Fetch all indicators instead from the current active version 
  $sql = "SELECT i.keyctr as id, i.indicator_code as code, i.relevance_def as description
  from maintenance_area_indicators i 
  inner join maintenance_criteria_setup cs
  on cs.indicator_keyctr = i.keyctr 
  inner join maintenance_criteria_version v
  on v.keyctr = cs.version_keyctr
  where v.active_ = 1";
  $stmt = $pdo->prepare($sql);
  $stmt->execute();
  $activeIndicators = $stmt->fetchAll(PDO::FETCH_ASSOC);

  // Fetch taken permissions in user_roles_barangay (assessment)
  // $sql = "SELECT  b.brgyid, b.brgyname, p.* from permissions p inner join user_roles_barangay rb on rb.permission_id = p.id inner join refbarangay b on b.brgyid = rb.barangay_id";
  $sql = "SELECT  b.brgyid, b.brgyname, p.* from permissions p inner join user_roles_barangay rb on rb.permission_id = p.id cross join refbarangay b";
  $stmt = $pdo->prepare($sql);
  $stmt->execute();
  $takenAssessment = [];
  foreach ($stmt->fetchAll(PDO::FETCH_ASSOC) as $row) {
    // remove int values (like p.id)
    $filteredRow = array_filter($row, fn($value) => is_string($value));
    // get assessment perms
    $assessmentData = array_filter($filteredRow, fn($key) => str_contains($key, 'assessment'), ARRAY_FILTER_USE_KEY);
    // assign perms to each barangay
    $takenAssessment[$row['brgyid']] = $assessmentData;
  }
  // writeLog('taken assessment permissions was:');
  // writeLog($takenAssessment);

  // Build the JSON response
  $response = [];
  $rolePermissions = array_keys($rolePermissions);
  $rolePermissions = array_filter($rolePermissions, function ($key) {
    return !str_contains($key, 'barangay');
  }); // remove allow_barangay
  foreach ($barangays as $barangay) {
    foreach ($activeIndicators as $indicator) {
      // Get available assessment permissions (exclude taken ones)
      // writeLog('Taken assessment barangay');
      // writeLog($takenAssessment[$barangay['brgyid']]);
      $takenPermissions = array_diff($allPermissions, $takenAssessment[$barangay['brgyid']] ?? []);
      // writeLog('Taken permissions after: ');
      // writeLog($takenPermissions);

      // TODO: add a ternary to check if it is taken or not.
      // CREATE MODE: if taken, mark with check and disable
      // EDIT MODE: if taken and user id match, mark with check. If taken and not user match, then check and disable
      $response[] = [
        "barangay" => [
          'name' => $barangay['brgyname'],
          'id' => $barangay['brgyid'],
        ],
        "indicators" => $indicator,
        'taken_perms' => array_map(function ($perm) {
          return str_replace('assessment_', '', $perm);
        }, $takenPermissions),
        'available_perms' => array_map(function ($perm) {
          return str_replace('assessment_', '', $perm);
        }, $rolePermissions),
      ];
    }
  }

  // writeLog('Final result was:');
  // writeLog($response);
  // Return JSON response
  echo json_encode($response, JSON_PRETTY_PRINT);
} catch (\Throwable $th) {
  http_response_code(500);
  $message = $th->getMessage();
  writeLog($th);
  echo json_encode($message);
}
