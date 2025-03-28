<?php

class User_Actions
{
    private $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }


    public function uploadFile($barangay_id, $criteria_keyctr, $filePath, $fileName)
{
    try {
        if (!$this->pdo->inTransaction()) {
            $this->pdo->beginTransaction(); 
        }

        $query1 = "INSERT INTO barangay_assessment_files 
                    (barangay_id, criteria_keyctr, file_path, file_name, date_uploaded, comments, status) 
                    VALUES 
                    (:barangay_id, :criteria_keyctr, :file_path, :file_name, NOW(), '{}', 'pending')";
        $stmt1 = $this->pdo->prepare($query1);

        $stmt1->execute([
            ':barangay_id' => $barangay_id,
            ':criteria_keyctr' => $criteria_keyctr,
            ':file_path' => $filePath,
            ':file_name' => $fileName,
        ]);

        $query2 = "UPDATE barangay_assessment 
                   SET last_modified = NOW() 
                   WHERE barangay_id = :barangay_id";
        $stmt2 = $this->pdo->prepare($query2);

        $stmt2->execute([
            ':barangay_id' => $barangay_id,
        ]);

        $this->pdo->commit();

        return true;
    } catch (Exception $e) {
        if ($this->pdo->inTransaction()) {
            $this->pdo->rollBack(); // Rollback only if transaction is active
        }

        throw new Exception("Failed to upload file and update barangay_assessment: " . $e->getMessage());
    }
}

    


public function deleteFile($file_id): bool
{
    try {
        $this->pdo->beginTransaction();

        $query1 = "SELECT barangay_id, file_path FROM barangay_assessment_files WHERE file_id = :file_id";
        $stmt1 = $this->pdo->prepare($query1);
        $stmt1->execute([':file_id' => $file_id]);
        $fileData = $stmt1->fetch(PDO::FETCH_ASSOC);

        if (!$fileData) {
            throw new Exception("File not found for the provided file_id.");
        }

        $barangay_id = $fileData['barangay_id'];
        $filePath = $fileData['file_path'];

        if ($filePath && file_exists($filePath)) {
            unlink($filePath);
        }

        $query2 = "UPDATE barangay_assessment 
                   SET last_modified = NOW() 
                   WHERE barangay_id = :barangay_id";
        $stmt2 = $this->pdo->prepare($query2);
        $stmt2->execute([
            ':barangay_id' => $barangay_id,
        ]);

        $query3 = "DELETE FROM barangay_assessment_files
                   WHERE file_id = :file_id";
        $stmt3 = $this->pdo->prepare($query3);
        $stmt3->execute([
            ':file_id' => $file_id,
        ]);

        if ($stmt3->rowCount() === 0) {
            throw new Exception("No matching record found for file deletion.");
        }

        $this->pdo->commit();

        return true;
    } catch (Exception $e) {
        if ($this->pdo->inTransaction()) {
            $this->pdo->rollBack();
        }
        throw new Exception("Failed to delete file and update barangay_assessment: " . $e->getMessage());
    }
}





}
