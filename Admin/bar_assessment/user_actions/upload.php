<?php
require_once 'user_actions.php';
require_once '../../../db/db.php';
require_once '../../../api/audit_log.php';

header('Content-Type: application/json');

$barangayAssessment = new User_Actions($pdo);
$log = new Audit_log($pdo);



if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['file'])) {
    $barangay_id = $_POST['barangay_id'];
    $criteria_keyctr = $_POST['criteria_keyctr'];

    $fileTmpPath = $_FILES['file']['tmp_name'];
    $fileName = $_FILES['file']['name'];

    // Define upload directory
    $uploadDir = '../../files/';

    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0777, true);
    }

    $filePath = $uploadDir . uniqid() . "_" . basename($fileName);

    if (move_uploaded_file($fileTmpPath, $filePath)) {
        $success = $barangayAssessment->uploadFile($barangay_id, $criteria_keyctr, $filePath, $fileName);

        if ($success) {

            $log->userLog("Uploaded file: $fileName for Barangay ID: $barangay_id, Criteria: $criteria_keyctr");

            echo json_encode(['success' => true, 'message' => 'File uploaded successfully.']);
            exit;
        } else {
            unlink($filePath);
            echo json_encode(['success' => false, 'message' => 'Failed to save file information in the database.']);
            exit;
        }
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to upload the file.']);
        exit;
    }
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request.']);
    exit;
}
