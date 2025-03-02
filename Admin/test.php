<?php
require_once '../db/db.php';
require_once '../Admin/bar_assessment/responses.php';

$response = new Responses($pdo);

$userID = '1';

$test = $pdo->query('SELECT * FROM audit_log WHERE action_id = "1"')->fetchAll(PDO::FETCH_ASSOC);
echo '<pre>';
print_r($test);
echo '</pre>';

$test = $pdo->prepare('SELECT * FROM audit_log WHERE action_id = :user_id');
$test->bindParam(':user_id', $userID, PDO::PARAM_STR);
$test->execute();
$yey = $test->fetchAll(PDO::FETCH_ASSOC);

echo '<pre>';
print_r($yey);
echo '</pre>';

$test = $pdo->prepare('SELECT * FROM audit_log WHERE action_id = :user_id');
$test->execute(['user_id' => $userID]);
$yey = $test->fetchAll(PDO::FETCH_ASSOC);

echo '<pre>';
print_r($yey);
echo '</pre>';

$pdo->beginTransaction();

$test = $pdo->prepare('INSERT INTO audit_log (user_id, action) VALUES (?, ?)');
$test->execute([$userID, 'resr']);

if ($test) {
    echo 'Success <br>';
    $pdo->rollBack();
}

$test = $pdo->prepare('INSERT INTO audit_log (user_id, action) VALUES (:user_id,:action )');
$test->execute([
    'user_id' => $userID,
    'action' => 'resr'
]);


$pdo->beginTransaction();
if ($test) {
    echo 'Success';
    $pdo->rollBack();
}