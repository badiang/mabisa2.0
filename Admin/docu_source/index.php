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
$stmt = $pdo->query("SELECT * FROM maintenance_document_source");
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
                <h3 class="m-0 font-weight-bold text-primary">Document Sources</h3>
              </div>
              <div style="float: right;">
                <div class="row">
                  <a class="btn btn-primary" id="open-add-modal">Add New Document Source</a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="table table-responsive"></div>
              <table id="maintenanceTable" class="table table-bordered">
                <thead>
                  <tr>
                    <th>Keyctr</th>
                    <th>Source Code</th>
                    <th>Source Description</th>
                    <th>Trail</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($data as $row):
                    ?>
                    <tr>
                      <td><?= htmlspecialchars($row['keyctr']); ?></td>
                      <td><?= htmlspecialchars($row['srccode']); ?></td>
                      <td><?= htmlspecialchars($row['srcdesc']); ?></td>
                      <td><?= htmlspecialchars($row['trail']); ?></td>
                      <td>
                      <a class="btn btn-primary edit-btn" data-id="<?php echo $row['keyctr']; ?>">
                          Edit
                        </a>
                        <a href="delete_document_source.php?keyctr=<?php echo $row['keyctr']; ?>" class="btn btn-danger delete-btn"
                        data-id="<?php echo $row['keyctr']; ?>">Delete</a>
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
  
  <div id="editDocuSourceModalContainer"></div>
      <script>
    $(document).ready(function () {
      $('#open-add-modal').click(function () {
        $('#addDocuSource').modal('show');
      });

      var successMessage = "<?php echo $successMessage; ?>";
      if (successMessage) {
        alert(successMessage);
      }

      $('.delete-btn').click(function (e) {
        e.preventDefault();
        var url = $(this).attr('href');
        if (confirm("Are you sure you want to delete this category?")) {
          window.location.href = url;
        }
      });
     
    });
  </script>

<script>
     $(document).on('click', '.edit-btn', function () {
        var code = $(this).data('id');

        if (!code) {
          alert('Error: Missing category code!');
          return;
        }

        $.ajax({
  url: 'edit_document_source.php',
  type: 'GET',
  data: { keyctr: code },  
          success: function (response) {
            $('#editDocuSourceModalContainer').html(response);
            $('#editDocuSourceModal').modal('show');
            
          },
          error: function () {
            alert('Error retrieving category data.');
          }
        });
      });
  </script>
  
  <?php require 'create_document_source.php' ?>
</body>

</html>