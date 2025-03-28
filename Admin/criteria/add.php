<?php
$isInFolder = true;
include_once '../script.php';
require_once '../../db/db.php';

function fetchAllData($pdo, $query)
{
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

$maintenance_criteria_version_result = $pdo->query("SELECT keyctr FROM `maintenance_criteria_version` WHERE active_ = 1")->fetchColumn();
$maintenance_area_indicators_result = fetchAllData($pdo, "SELECT * FROM `maintenance_area_indicators` ORDER BY indicator_code");
$maintenance_area_mininumreqs_result = fetchAllData($pdo, "SELECT * FROM `maintenance_area_mininumreqs` ORDER BY reqs_code");
$maintenance_document_source_result = fetchAllData($pdo, "SELECT * FROM `maintenance_document_source`");



echo '<pre>';
print_r($maintenance_criteria_version_result);
echo '</pre>';
?>

<!DOCTYPE html>
<html lang="en">

<body>

    <!-- Modal -->
    <div class="modal fade" id="addMaintenanceCriteriaModal" tabindex="-1" aria-labelledby="modalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-xl">

            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="modalLabel">Add Maintenance Criteria Setup</h5>
                    <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
                </div>
                <div class="modal-body">
                    <form action="../script.php" method="post">
                        <input type="hidden" class="form-control" name="version_keyctr" value="<?= $maintenance_criteria_version_result ?>" />

                        <div class="mb-3">
                            <label class="form-label">Indicator</label>
                            <select class="form-control" name="indicator_keyctr" required>
                                <option value="">Select</option>
                                <?php foreach ($maintenance_area_indicators_result as $row) { ?>
                                    <option data-indicator-code="<?= htmlspecialchars($row['indicator_code']) ?>"
                                        value="<?= htmlspecialchars($row['keyctr']) ?>">
                                        <?= htmlspecialchars($row['indicator_code'] . " - " . $row['indicator_description']) ?>
                                    </option>
                                <?php } ?>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Minimum Requirements</label>
                            <select class="form-control" name="minreqs_keyctr" required>
                                <option value="">Select</option>
                            </select>
                        </div>

                        <!-- <div class="mb-3">
                            <label class="form-label">Sub Minimum Requirements</label> -->
                        <input type="hidden" class="form-control" name="sub_minimumreqs" value="" />
                        <!-- </div> -->

                        <div class="mb-3">
                            <label class="form-label">DOCUMENTARY REQUIREMENTS/MOVs</label>
                            <textarea class="form-control" name="movdocs_reqs" rows="3" required></textarea>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Template Link</label>
                            <input type="text" class="form-control" name="template" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Data Source</label>
                            <select class="form-control" name="data_source" required>
                                <option value="">Select</option>
                                <?php foreach ($maintenance_document_source_result as $row) { ?>
                                    <option value="<?= htmlspecialchars($row['keyctr']) ?>">
                                        <?= htmlspecialchars($row['srcdesc']) ?>
                                    </option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary"
                                name="add_maintenance_criteria_setup">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <?php $doublePathPrepend = isset($isInFolder) ? '../../' : '../'; ?>
    <!-- <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script> -->
    <script src="<?= $doublePathPrepend ?>vendor/jquery/jquery.min.js"></script>

    <script>
        $(document).ready(function() {
            $('select[name="indicator_keyctr"]').change(function() {
                const indicatorKeyctr = $(this).val();
                console.log("Selected Indicator:", indicatorKeyctr);

                $.ajax({
                    url: '../script.php',
                    type: 'GET',
                    data: {
                        'indicator_id': indicatorKeyctr
                    },
                    dataType: 'JSON',
                    success: function(response) {
                        if (response.data && Array.isArray(response.data)) {
                            const minReqSelect = $('select[name="minreqs_keyctr"]');
                            minReqSelect.empty().append('<option value="">Select</option>');

                            $.each(response.data, function(index, item) {
                                minReqSelect.append(
                                    $('<option>', {
                                        value: item.req_keyctr,
                                        text: item.reqs_code + " - " + item.min_requirement_desc
                                    })
                                );
                            });
                        } else {
                            console.error("Unexpected response format:", response);
                        }
                    }
                });
            });

        });
        $(document).on('click', '[data-dismiss="modal"]', function() {
            $('#addMaintenanceCriteriaModal').modal('hide');
        });
    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


</body>


</html>