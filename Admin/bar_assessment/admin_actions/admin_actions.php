<?php

require_once __DIR__ . '../../../../api/audit_log.php';
class Admin_Actions
{
    private $pdo;
    private $auditLog;
    

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
        $this->auditLog = new Audit_log($pdo); 
    }

    public function approve(string $file_id): bool
    {
        try {
            $this->pdo->beginTransaction();
            
            $sql = "UPDATE barangay_assessment_files SET status = 'approved' WHERE file_id = :file_id";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':file_id', $file_id);
            
            if (!$stmt->execute()) {
                throw new Exception("Failed to approve file.");
            }
            
            $this->pdo->commit();
            $action = "Approved a file with file ID: $file_id";
                $this->auditLog->userLog($action);
            return true;
        } catch (Exception $e) {
            $this->pdo->rollBack();
            return false;
        }
    }

    public function decline(string $file_id): bool
    {
        try {
            $this->pdo->beginTransaction();
            
            $sql = "UPDATE barangay_assessment_files SET status = 'declined' WHERE file_id = :file_id";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':file_id', $file_id);
            
            if (!$stmt->execute()) {
                throw new Exception("Failed to decline file.");
            }
            
            $this->pdo->commit();
            $action = "Returned a file with file ID: $file_id";
            $this->auditLog->userLog($action);
            return true;
        } catch (Exception $e) {
            $this->pdo->rollBack();
            return false;
        }
    }

    public function revert(string $file_id): bool
    {
        try {
            $this->pdo->beginTransaction();
            
            $sql = "UPDATE barangay_assessment_files SET status = 'pending' WHERE file_id = :file_id";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':file_id', $file_id);
            
            if (!$stmt->execute()) {
                throw new Exception("Failed to revert file.");
            }
            
            $this->pdo->commit();
            $action = "Reverted a file to pending with file ID: $file_id";
            $this->auditLog->userLog($action);
            return true;
        } catch (Exception $e) {
            $this->pdo->rollBack();
            return false;
        }
    }

    public function viewFile($file_id)
    {
        try {
            $query = "SELECT file_path FROM barangay_assessment_files WHERE file_id = :file_id";
            $stmt = $this->pdo->prepare($query);
            $stmt->execute([':file_id' => $file_id]);
            
            $file = $stmt->fetch(PDO::FETCH_ASSOC);
            
            if ($file && file_exists($file['file_path'])) {
                return $file['file_path'];
            } else {
                throw new Exception("File not found.");
            }
        } catch (Exception $e) {
            return false;
        }
    }
}