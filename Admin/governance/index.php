<?php
error_reporting(E_ALL ^ E_NOTICE);
date_default_timezone_set('Asia/Manila');
// ensure the user is still logged in, redirect if not
// use empty to check for all cases (variable unset, blank string, etc). Negation of the variable also works, but may display warning.
if (empty($_COOKIE['id'])) {
  header('location:logged_out.php');
  exit;
}

require_once '../../db/db.php';
$stmt = $pdo->query("SELECT * FROM maintenance_governance");
$stmt->execute();
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);


session_start();
$successMessage = isset($_SESSION['success']) ? $_SESSION['success'] : '';
unset($_SESSION['success']);
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <?php
  $isInFolder = true;
  require '../common/head.php' ?>
  <script src="../../vendor/jquery/jquery.min.js"></script>
  <script src="../../js/maintenance-criteria.js"></script>
</head>


<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">
    <!-- Sidebar -->
    <?php
    $isCriteriaPhp = true;
    require '../common/sidebar.php' ?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <?php require '../common/nav.php' ?>
        <!-- End of Topbar -->
        <!--Header-->
        <div class="container-fluid">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <div style="float: left;">
                <h3 class="m-0 font-weight-bold text-primary">Governance Assignment</h3>
              </div>
              <div style="float: right;">
                <div class="row">
                  <a class="btn btn-primary" id="open-add-modal"> Add New Governance Entry</a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="table table-responsive"></div>
              <table id="maintenanceTable" class="table table-bordered">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Category Code</th>
                    <th>Area Keyctr</th>
                    <th>Description Keyctr</th>
                    <th>Description</th>
                    <th>Trail</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($data as $row):
                    ?>
                    <tr>
                      <td><?php echo $row['keyctr']; ?></td>
                      <td><?php echo $row['cat_code']; ?></td>
                      <td><?php echo $row['area_keyctr']; ?></td>
                      <td><?php echo $row['desc_keyctr']; ?></td>
                      <td><?php echo $row['description']; ?></td>
                      <td><?php echo $row['trail']; ?></td>
                      <td>
                        <a class="btn btn-primary open-modal" data-id="<?php echo $row['keyctr']; ?>">
                          Edit
                        </a>
                        <a href="delete_governance.php?keyctr=<?php echo $row['keyctr']; ?>"
                          class="btn btn-danger delete-btn" data-id="<?php echo $row['keyctr']; ?>">Delete</a>
                      </td>
                    </tr>

                  <?php endforeach ?>
                </tbody>
              </table>
              <!--End Page Content-->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  <div id="editGovernanceContainer"></div>
  <script>
    $(document).ready(function () {
      $('#open-add-modal').click(function () {
        $('#addGovernance').modal('show');
      });

      var successMessage = "<?php echo $successMessage; ?>";
      if (successMessage) {
        alert(successMessage);
      }

      $('.delete-btn').click(function (e) {
        e.preventDefault();
        var url = $(this).attr('href');
        if (confirm("Are you sure you want to delete this governance?")) {
          window.location.href = url;
        }
      });
    });
    $(document).on('click', '.open-modal', function () {
      var keyctr = $(this).data('id');

      if (!keyctr) {
        alert('Error: Missing keyctr!');
        return;
      }


      $.ajax({
        url: 'edit_governance.php',
        type: 'GET',
        data: { keyctr: keyctr },
        success: function (response) {
          $('#editGovernanceContainer').html(response);
          $('#editGovernance').modal('show');
        },
        error: function () {
          alert('Error retrieving data.');
        }
      });
    });


  </script>
  <?php include 'create_governance.php' ?>
</body>

</html>