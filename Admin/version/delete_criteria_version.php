<?php
include '../../db/db.php';
session_start();

if (isset($_GET['keyctr'])) {
    $keyctr = $_GET['keyctr'];

    try {
        $pdo->beginTransaction();

        $stmt = $pdo->prepare("DELETE FROM maintenance_criteria_version WHERE keyctr = ?");
        
        if ($stmt->execute([$keyctr])) {
            $pdo->commit();
            $_SESSION['success'] = "Criteria version deleted successfully!";
        } else {
            $pdo->rollBack();
            $_SESSION['error'] = "Failed to delete criteria version.";
        }
    } catch (Exception $e) {
        $pdo->rollBack();
        $_SESSION['error'] = "An error occurred: " . $e->getMessage();
    }

    header('Location: index.php');
    exit();
} else {
    $_SESSION['error'] = "Invalid request!";
    header('Location: index.php');
    exit();
}
?>
