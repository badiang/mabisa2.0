<?php
include_once '../../db/db.php';
include_once '../../api/audit_log.php';
$log = new Audit_log($pdo);
session_start();

if (isset($_GET['keyctr'])) {
    $keyctr = $_GET['keyctr'];

    // Fetch the specific minimum requirement for editing
    $stmt = $pdo->prepare("SELECT * FROM maintenance_area_mininumreqs WHERE keyctr = :keyctr");
    $stmt->execute(['keyctr' => $keyctr]);
    $req = $stmt->fetch(PDO::FETCH_ASSOC);
}

// Fetch all indicators for the dropdown
$query = 'SELECT * FROM `maintenance_area_indicators`';
$stmt = $pdo->prepare($query);
$stmt->execute();
$indicators = $stmt->fetchAll(PDO::FETCH_ASSOC);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $keyctr = $_POST['keyctr'];
    $indicator_keyctr = $_POST['indicator_keyctr'];
    $reqs_code = $_POST['reqs_code'];
    $relevance = $_POST['relevance'];
    $description = $_POST['description'];
    $sub_mininumreqs = isset($_POST['sub_mininumreqs']) ? 1 : 0;

    try {
        $pdo->beginTransaction();

        $sql = "UPDATE maintenance_area_mininumreqs 
                SET indicator_keyctr = :indicator_keyctr, 
                    reqs_code = :reqs_code, 
                    description = :description, 
                    sub_mininumreqs = :sub_mininumreqs,
                    relevance_definition = :relevance
                WHERE keyctr = :keyctr";

        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            'indicator_keyctr' => $indicator_keyctr,
            'reqs_code' => $reqs_code,
            'relevance' => $relevance,
            'description' => $description,
            'sub_mininumreqs' => $sub_mininumreqs,
            'keyctr' => $keyctr
        ]);

        $pdo->commit();
        $log->userLog('Updated Minimum Requirement with ID: ' . $keyctr . ', to Indicator ID: ' . $indicator_keyctr . ', Requirements Code: ' . $reqs_code . ', Description: ' . $description . ', and Sub Minimum Requirements: ' . $sub_mininumreqs);
        $_SESSION['success'] = "Minimum requirement updated successfully!";
    } catch (Exception $e) {
        $pdo->rollBack();
        $_SESSION['error'] = "Error updating minimum requirement: " . $e->getMessage();
    }

    header("Location: index.php");
    exit();
}
?>

<div class="modal fade" id="editMinimumReqModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="editModalLabel">Edit Minimum Requirement</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="edit.php">
                    <input type="hidden" name="keyctr" value="<?php echo htmlspecialchars($req['keyctr']); ?>">

                    <div class="mb-3">
                        <label class="form-label">Indicator Keyctr:</label>
                        <select class="form-control" name="indicator_keyctr" required>
                            <option value="">Select</option>
                            <?php foreach ($indicators as $row) { ?>
                                <option value="<?= htmlspecialchars($row['keyctr']) ?>"
                                    <?= $row['keyctr'] == $req['indicator_keyctr'] ? 'selected' : '' ?>>
                                    <?= htmlspecialchars($row['indicator_code'] . " - " . $row['indicator_description']) ?>
                                </option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Relevance Definition:</label>
                        <textarea class="form-control" name="relevance" required><?php echo htmlspecialchars($req['relevance_definition']); ?></textarea>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Reqs Code:</label>
                        <input type="text" class="form-control" name="reqs_code" value="<?php echo htmlspecialchars($req['reqs_code']); ?>" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Description:</label>
                        <textarea class="form-control" name="description" required><?php echo htmlspecialchars($req['description']); ?></textarea>
                    </div>

                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" name="sub_mininumreqs" value="1" <?php echo $req['sub_mininumreqs'] ? 'checked' : ''; ?>>
                        <label class="form-check-label">Sub Minimum Reqs</label>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Update Requirement</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>