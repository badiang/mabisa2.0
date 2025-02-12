<?php
// ensure the user is still logged in, redirect if not
if (empty($_COOKIE['id'])) {
    header('location:logged_out.php');
    exit;
}

// PERMISSIONS CHECK

require_once '../api/logging.php';
require_once '../db/db.php';
require_once '../api/has_permissions.php';
global $pdo;

if (!hasPermissions($pdo, $_COOKIE['id'], ['assessment_submissions_read'], true, true)) {
    header('location:no_permissions.php');
    exit;
}

// END OF PERMISSIONS CHECK

require_once 'bar_assessment/responses.php';

$responsesObj = new Responses($pdo);
$responses = $responsesObj->show_responses();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php require 'common/head.php' ?>
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../js/bar-assessment.js"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!--sidebar start  -->
        <?php
        $isInFolderessmentPhp = true;
        include 'common/sidebar.php' ?>
        <!-- sidebar end -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <?php include 'common/nav.php' ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <div style="float: left;">
                                <h3 class="m-0 font-weight-bold text-primary">Barangay Assessment</h3>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table table-responsive">
                                <table id="barangayTable" class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Barangay</th>
                                            <th>Last Transaction</th>
                                            <th>Actions</th>
                                            <th>Progress</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        if (!empty($responses)) {
                                            foreach ($responses as $row) {
                                                $progress = $responsesObj->getProgress($row['barangay_id']);
                                                echo "<tr>";
                                                echo "<td>" . htmlspecialchars($row['barangay']) . "</td>";
                                                echo "<td>" . htmlspecialchars($row['dateUploaded']) . "</td>";
                                                echo "<td>";
                                                echo "<a href='bar_assessment/show_bar_response.php?barangay_id=" . htmlspecialchars($row['barangay_id']) . "' class='btn btn-primary btn-sm'>View</a>";
                                                echo "</td>";
                                                echo "<td>" . htmlspecialchars($progress) . " %</td>";
                                                echo "</tr>";
                                            }
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                    </div>
                </div>
                <!-- End of Page Content -->


            </div>
            <!-- End of Main Content -->
        </div>

    </div>
    </div>
</body>

</html>