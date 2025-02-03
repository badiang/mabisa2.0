<?php

declare(strict_types=1);
// ini_set('display_errors', 0); // Disable error display
require_once 'logging.php';
require_once '../db/db.php';

try {
  if ($_SERVER['REQUEST_METHOD'] !== 'POST') throw new Exception('Invalid request.');
  if (empty($_POST['role_id'])) throw new Exception('Invalid id.');
  global $pdo;

  /** @var int */
  $id = $_POST['role_id'];

  $query = $pdo->prepare("select * from permissions inner join roles on roles.id = permissions.id where roles.id = :id");
  $query->execute([
    'id' => $id
  ]);

  $rolePermissions = $query->fetch(PDO::FETCH_ASSOC);

  // remove first item (id)
  array_shift($rolePermissions);
  // remove last item (last modified)
  array_pop($rolePermissions);

  //get all items where value is true (or 1 in this case)
  $rolePermissions = array_filter($rolePermissions, function ($permission) {
    writeLog('Permission is:');
    writeLog($permission);
    return $permission == 1;
  });

  echo json_encode($rolePermissions);
} catch (\Throwable $th) {
  http_response_code(500);
  echo json_encode($th->getMessage());
}
