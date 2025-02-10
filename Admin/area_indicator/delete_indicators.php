<?php
include '../../db/db.php';
session_start();

if (isset($_GET['keyctr'])) {
    $keyctr = $_GET['keyctr'];

    try {
        $pdo->beginTransaction();

        $stmt = $pdo->prepare("DELETE FROM maintenance_area_indicators WHERE keyctr = ?");
        if ($stmt->execute([$keyctr])) {
            $pdo->commit();
            $_SESSION['success'] = "Indicator entry deleted successfully!";
        } else {
            $pdo->rollBack();
            $_SESSION['error'] = "Failed to delete indicator entry.";
        }
    } catch (Exception $e) {
        $pdo->rollBack();
        $_SESSION['error'] = "An error occurred: " . $e->getMessage();
    }

    header("Location: index.php");
    exit;
}
