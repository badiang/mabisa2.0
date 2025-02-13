<?php
    include '../../db/db.php';
    session_start();
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['add_minreq'])) {


    $indicator_keyctr = $_POST['indicator_keyctr'];
    $reqs_code = $_POST['reqs_code'];
    $description = $_POST['description'];
    $sub_mininumreqs = isset($_POST['sub_mininumreqs']) ? 1 : 0; 

    try {
        $pdo->beginTransaction();
        $sql = "INSERT INTO maintenance_area_mininumreqs (indicator_keyctr, reqs_code, description, sub_mininumreqs) VALUES (?, ?, ?, ?)";
        $stmt = $pdo->prepare($sql);

        if ($stmt->execute([$indicator_keyctr, $reqs_code, $description, $sub_mininumreqs])) {
            $pdo->commit();
            $_SESSION['success'] = "Minimum Requirement created successfully!";
        } else {
            $pdo->rollBack();
            $_SESSION['error'] = "Failed to create minimum requirement.";
        }
    } catch (Exception $e) {
        $pdo->rollBack();
        $_SESSION['error'] = "Error: " . $e->getMessage();
    }

    header("Location: index.php");
    exit;
}
?>


<div class="modal fade" id="addMinimumReqModal" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Add New Requirement</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="add_req.php">
                    <div class="mb-3">
                        <label class="form-label">Indicator Keyctr</label>
                        <input type="number" class="form-control" name="indicator_keyctr" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Requirement Code</label>
                        <input type="text" class="form-control" name="reqs_code" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Description</label>
                        <textarea class="form-control" name="description" required></textarea>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" name="sub_mininumreqs" value="1">
                        <label class="form-check-label">Sub Minimum Requirement</label>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" name="add_minreq">Add Minimum Requirement</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>