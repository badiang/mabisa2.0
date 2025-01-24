<?php
require_once './responses.php';
require_once './comments.php';
require_once './admin_actions/admin_actions.php';
require_once '../../db/db.php';


$barangay_id = isset($_GET['barangay_id']) ? $_GET['barangay_id'] : null;
$barangay_name = isset($_GET['brgyname']) ? $_GET['brgyname'] : null;
$name = 'admin'; //temporary only
$role = 'Secretary'; //temporary only

$responses = new Responses($pdo);
$admin = new Admin_Actions($pdo);

try {
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if (isset($_POST['action'], $_POST['file_id'])) {
            $action = $_POST['action'];
            $file_id = $_POST['file_id'];

            if ($action === 'approve') {
                $result = $admin->approve($file_id);
            } elseif ($action === 'decline') {
                $result = $admin->decline($file_id);
            } else {
                throw new Exception('Invalid action specified.');
            }

            if ($result) {
                echo "<script>
                alert('Action " . $action . " was successfully performed for Barangay: " . $barangay_id . "');
                window.location.href = document.referrer;
                </script>";

            } else {
                echo "Failed to perform action '$action'.";
            }
        } else {
            throw new Exception('Invalid form data.');
        }
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}


if ($barangay_id) {
    $stmt = $pdo->prepare("SELECT brgyname FROM refbarangay WHERE brgyid = ?");
    $stmt->bindParam(1, $barangay_id, PDO::PARAM_INT);
    $stmt->execute();
    $barangay = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($barangay) {
        $barangay_name = $barangay['brgyname'];
    } else {
        $barangay_name = 'Unknown';
    }

    $stmt = $pdo->prepare("SELECT * FROM maintenance_area_description");
    $stmt->execute();
    $area_description = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $stmt = $pdo->prepare("SELECT * FROM barangay_assessment_files WHERE barangay_id = ?");
    $stmt->bindParam(1, $barangay_id, PDO::PARAM_INT);
    $stmt->execute();
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
} else {
    $data = [];
    $barangay_name = 'Unknown';
}


?>



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <base href="../">


    <title>MABISA - Admin</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="../js/bar-assessment.js"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!--sidebar start  -->
        <?php
        $isBarAssessmentPhp = true;
        include '../common/sidebar.php' ?>

        <!-- sidebar end -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->

                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="card shadow mb-4">
                        <div class="card-body">
                            <h4>Barangay Details</h4>
                            <p><strong>Barangay ID:</strong> <?php echo htmlspecialchars($barangay_id); ?></p>
                            <p><strong>Barangay Name:</strong> <?php echo htmlspecialchars($barangay_name); ?></p>
                            <a href="./bar_assessment.php" class="btn btn-secondary">Back</a>
                        </div>
                    </div>
                    <?php if (!empty($area_description)): ?>

                        <?php foreach ($area_description as $area_desc): ?>
                            <div class="card-header bg-primary text-center py-3">
                                <div class="card-body">
                                    <h5 class="text-white"><?php echo htmlspecialchars($area_desc['description']); ?></h5>
                                </div>
                            </div>
                            <div class="card-body">
                                <?php
                                $stmt = $pdo->prepare("SELECT * FROM maintenance_area_indicators WHERE desc_keyctr = ?");
                                $stmt->bindParam(1, $area_desc['keyctr'], PDO::PARAM_INT);
                                $stmt->execute();
                                $indicators = $stmt->fetchAll(PDO::FETCH_ASSOC);
                                ?>
                                <?php if (!empty($indicators)): ?>
                                    <?php foreach ($indicators as $indicator): ?>
                                        <div class="row bg-info">
                                            <h6 class="col-lg-12 text-center text-white">
                                                <?php echo htmlspecialchars($indicator['indicator_code'] . ' ' . $indicator['indicator_description']); ?>
                                            </h6>
                                        </div>

                                        <!-- Query for maintenance_area_mininumreqs -->
                                        <?php
                                        $minReqStmt = $pdo->prepare("SELECT * FROM maintenance_area_mininumreqs WHERE indicator_code = ?");
                                        $minReqStmt->bindParam(1, $indicator['indicator_code'], PDO::PARAM_STR);
                                        $minReqStmt->execute();
                                        $minRequirements = $minReqStmt->fetchAll(PDO::FETCH_ASSOC);
                                        ?>
                                        <?php if (!empty($minRequirements)): ?>
                                            <div class="row mt-3">
                                                <table class="table table-bordered" style="table-layout: fixed; width: 100%;">
                                                    <?php if ($role === 'Admin'): ?>
                                                        <thead class="bg-secondary text-white">
                                                            <tr>
                                                                <th style="width: 9%; text-align: center;">Requirement Code</th>
                                                                <th style="width: 25%;">Requirement Description</th>
                                                                <th style="width: 9%;text-align: center;">Attachment</th>
                                                                <th style="width: 6%;text-align: center;">Status</th>
                                                                <th style="width: 10%; text-align: center;"> Last Modified</th>
                                                                <th style="width: 7%;text-align: center;"> Approval</th>
                                                                <th style="width: 9%;text-align: center;"> Comments</th>
                                                            </tr>
                                                        </thead>
                                                    <?php endif; ?>
                                                    <?php if ($role === 'Secretary'): ?>
                                                        <thead class="bg-secondary text-white">
                                                            <tr>
                                                                <th style="width: 9%;">Requirement Code</th>
                                                                <th style="width: 25%;">Requirement Description</th>
                                                                <th style="width: 6%; text-align: center;">Attachment</th>
                                                                <th style="width: 4%; text-align: center;">Status</th>
                                                                <th style="width: 9%;"> Last Modified</th>
                                                                <th style="width: 7%; text-align: center;"> Comments</th>
                                                            </tr>
                                                        </thead>
                                                    <?php endif; ?>
                                                    <tbody>
                                                        <?php foreach ($minRequirements as $minReq):
                                                            $current_req_keyctr = $minReq['keyctr']; ?>

                                                            <tr>
                                                                <td style="text-align: center; vertical-align: middle;">
                                                                    <?php echo htmlspecialchars($minReq['reqs_code']); ?>
                                                                </td>
                                                                <td style="vertical-align: middle;">
                                                                    <?php echo nl2br(htmlspecialchars($minReq['description'])); ?>
                                                                </td>
                                                                <td class="data-cell-upload-view"
                                                                    style="text-align: center; vertical-align: middle;"> <?php
                                                                    $data = $responses->getData($barangay_id, $minReq['keyctr'], $area_desc['keyctr'], $indicator['indicator_code'], $minReq['reqs_code']);

                                                                    if (!$data): ?>

                                                                        <!-- Case: Secretary Role -->
                                                                        <?php if ($role === 'Secretary'): ?>
                                                                            <form method="POST" action="./bar_assessment/user_actions/upload.php"
                                                                                enctype="multipart/form-data"
                                                                                id="uploadForm_<?php echo htmlspecialchars($current_req_keyctr, ENT_QUOTES, 'UTF-8'); ?>">
                                                                                <input type="hidden" name="barangay_id"
                                                                                    value="<?php echo htmlspecialchars($barangay_id, ENT_QUOTES, 'UTF-8'); ?>">
                                                                                <input type="hidden" name="req_keyctr"
                                                                                    value="<?php echo htmlspecialchars($current_req_keyctr, ENT_QUOTES, 'UTF-8'); ?>">
                                                                                <input type="hidden" name="desc_ctr"
                                                                                    value="<?php echo htmlspecialchars($area_desc['keyctr'], ENT_QUOTES, 'UTF-8'); ?>">
                                                                                <input type="hidden" name="indicator_code"
                                                                                    value="<?php echo htmlspecialchars($indicator['indicator_code'], ENT_QUOTES, 'UTF-8'); ?>">
                                                                                <input type="hidden" name="reqs_code"
                                                                                    value="<?php echo htmlspecialchars($minReq['reqs_code'], ENT_QUOTES, 'UTF-8'); ?>">
                                                                                <input type="file" name="file"
                                                                                    id="fileInput_<?php echo htmlspecialchars($current_req_keyctr, ENT_QUOTES, 'UTF-8'); ?>"
                                                                                    style="display: none;" required>
                                                                                <button type="button" class="btn btn-primary" title="Upload"
                                                                                    onclick="document.getElementById('fileInput_<?php echo htmlspecialchars($current_req_keyctr, ENT_QUOTES, 'UTF-8'); ?>').click();">
                                                                                    <i class="fa fa-upload"></i>
                                                                                </button>
                                                                            </form>


                                                                            <script>
                                                                                document.getElementById('fileInput_<?php echo htmlspecialchars($current_req_keyctr, ENT_QUOTES, 'UTF-8'); ?>')
                                                                                    .addEventListener('change', function () {
                                                                                        if (this.files.length > 0) {
                                                                                            document.getElementById('uploadForm_<?php echo htmlspecialchars($current_req_keyctr, ENT_QUOTES, 'UTF-8'); ?>').submit();
                                                                                        }
                                                                                    });
                                                                            </script>


                                                                        <?php elseif ($role === 'Admin'): ?>
                                                                            <!-- Case: Admin Role -->
                                                                            <p>No Uploads Yet</p>
                                                                        <?php endif; ?>

                                                                    <?php else: ?>
                                                                        <!-- Case: File is Present -->
                                                                        <form method="POST" action="./bar_assessment/admin_actions/view.php"
                                                                            target="_blank">
                                                                            <input type="hidden" name="file_id"
                                                                                value="<?php echo htmlspecialchars($data['file_id'], ENT_QUOTES, 'UTF-8'); ?>">
                                                                            <button type="submit" class="btn btn-success mb-3" title="View">
                                                                                <i class="fa fa-eye"></i>
                                                                            </button>
                                                                        </form>


                                                                        <!-- Additional Options for Secretary -->
                                                                        <?php if ($role === 'Secretary'): ?>
                                                                            <form id="deleteForm"
                                                                                data-id="<?php echo htmlspecialchars($data['file_id'], ENT_QUOTES, 'UTF-8'); ?>">
                                                                                <button type="button" class="btn btn-danger mb-3" title="Delete"
                                                                                    onclick="confirmDelete(this)">
                                                                                    <i class="fa fa-trash"></i>
                                                                                </button>
                                                                            </form>


                                                                        <?php endif; ?>

                                                                    <?php endif; ?>

                                                                    <!-- Status Icon -->
                                                                <td class="data-cell-status"
                                                                    style="text-align: center; vertical-align: middle;">
                                                                    <?php if (!empty($data)): ?>
                                                                        <?php if ($data['status'] === 'approved'): ?>
                                                                            <i class="fa-solid fa-check text-success" title="Approved"></i>
                                                                        <?php elseif ($data['status'] === 'declined'): ?>
                                                                            <i class="fa-solid fa-x text-danger" title="Declined"></i>
                                                                        <?php else: ?>
                                                                            <i class="fa-solid fa-hourglass-start" title="Waiting for Approval"></i>
                                                                        <?php endif; ?>
                                                                    <?php endif; ?>
                                                                </td>

                                                                <td class="data-cell-date-uploaded"
                                                                    style="text-align: center; vertical-align: middle;">
                                                                    <?php
                                                                    if ($data):
                                                                        echo htmlspecialchars($data['date_uploaded']);
                                                                    endif;

                                                                    ?>

                                                                </td>

                                                                <?php if ($role === 'Admin'): ?>
                                                                    <td>
                                                                        <div class="column">
                                                                            <div class="column">
                                                                                <div class="col-lg-6">
                                                                                    <form method="POST">
                                                                                        <input type="hidden" name="file_id"
                                                                                            value="<?php echo htmlspecialchars($data['file_id'], ENT_QUOTES, 'UTF-8'); ?>">
                                                                                        <input type="hidden" name="action" value="approve">
                                                                                        <button type="submit" class="btn btn-success mb-3"
                                                                                            style="background-color: #28a745; border: none; color: white; padding: 5px; font-size: 15px; border-radius: 5px; cursor: pointer;">
                                                                                            Approve
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                                <div class="col-lg-6">
                                                                                    <form method="POST">
                                                                                        <input type="hidden" name="file_id"
                                                                                            value="<?php echo htmlspecialchars($data['file_id'], ENT_QUOTES, 'UTF-8'); ?>">
                                                                                        <input type="hidden" name="action" value="decline">
                                                                                        <button type="submit" class="btn btn-danger btn-sm"
                                                                                            style="background-color: #dc3545; border: none; color: white; padding: 5px; font-size: 15px; border-radius: 5px; cursor: pointer;">
                                                                                            Decline
                                                                                        </button>
                                                                                    </form>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </td>

                                                                <?php endif; ?>

                                                                <td class="data-cell-comments"
                                                                    style="text-align: center; vertical-align: middle;">
                                                                    <?php
                                                                    if ($data):
                                                                        ?>

                                                                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                                                            data-target="#commentModal"
                                                                            data-fileid="<?php echo htmlspecialchars($data['file_id']); ?>"
                                                                            data-role="<?php echo htmlspecialchars($role); ?>"
                                                                            data-name="<?php echo htmlspecialchars($name); ?>">
                                                                            Comments
                                                                        </button>




                                                                        <?php
                                                                    endif;
                                                                    ?>
                                                                </td>
                                                            </tr>
                                                        <?php endforeach; ?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        <?php else: ?>
                                            <p class="text-white">No minimum requirements found for this indicator.</p>
                                        <?php endif; ?>

                                    <?php endforeach; ?>
                                <?php else: ?>
                                    <p class="text-white">No indicators found for this description.</p>
                                <?php endif; ?>
                            </div>
                        <?php endforeach; ?>

                    <?php else: ?>
                        <p>No maintenance area descriptions found.</p>
                    <?php endif; ?>

                    <!-- End of Page Content -->

                </div>
            </div>
            <!-- End of Main Content -->
        </div>
    </div>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <?php require '../components/comment_section.php' ?>
</body>

</html>