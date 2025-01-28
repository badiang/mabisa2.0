<?php
error_reporting(E_ALL ^ E_NOTICE);
date_default_timezone_set('Asia/Manila');
// ensure the user is still logged in, redirect if not
// use empty to check for all cases (variable unset, blank string, etc). Negation of the variable also works, but may display warning.
if (empty($_COOKIE['id'])) {
  header('location:logged_out.php');
  exit;
}
// require '../api/logging.php';
// if (roleAccess()) {
// }

require_once '../db/db.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <?php require 'common/head.php' ?>
  <script src="../js/roles.js" defer></script>
  <script src="../js/util/confirmation.js" defer></script>
  <script src="../js/util/alert.js" defer></script>
  <script src="../js/util/input-validation.js" defer></script>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <?php
    require 'common/sidebar.php' ?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <?php require 'common/nav.php' ?>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Page Heading -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <div style="float: left;">
                <h3 class="m-0 font-weight-bold text-primary">Roles</h3>
              </div>
              <div style="float: right;">
                <div class="row">
                  <button class="btn btn-sm btn-primary add-user-btn" data-toggle="modal" data-target="#crud-user">Add Role</button>
                </div>
              </div>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-striped table-bordered" id="user_dataTable" width="100%" cellspacing="0">
                  <?php
                  // $stmt = $pdo->prepare("SELECT COUNT(*) FROM pos.received_from where area_code=? and cmp_code=? ");
                  $stmt = $pdo->query("SELECT COUNT(*) FROM roles;");
                  $count = $stmt->fetchColumn();

                  if ($count != 0) {
                  ?>
                    <thead>
                      <tr>
                        <th>Role</th>
                        <th>Permissions</th>
                        <th>Actions</th>
                      </tr>
                    </thead>
                    <?php if ($count > 10) { ?>
                      <tfoot>
                        <tr>
                          <th>Role</th>
                          <th>Access</th>
                          <th>Actions</th>
                        </tr>
                      </tfoot>
                    <?php } ?>
                    <tbody id='user-table-body'>
                      <tr>
                        <td>Admin</td>
                        <td>Full Access</td>
                        <td><i class="fas fa-question-circle" data-toggle="tooltip" data-placement="right" title="This is the default role. Cannot be deleted or modified."></i></td>
                      </tr>
                      <?php
                      $query = $pdo->query("select * from roles");
                      while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
                      ?>
                        <tr>
                          <td><?php echo $row['name'] ?></td>
                          <td><?php
                              $permissionsValue = 'No permissions found.';
                              if ($row['permissions_id']) {
                                $query = $pdo->query("select * from permissions inner join roles on roles.permissions_id = permissions.id");
                              }
                              echo $permissionsValue;
                              ?></td>
                          <td>
                            <a href="#edit-role" class="btn btn-sm btn-info btn-circle edit-role-btn"
                              data-toggle="modal" data-target="#crud-role" data-id="<?= $row['id'] ?>">
                              <i class="fas fa-edit"></i>
                            </a>
                            <a href="#delete-role"
                              class="btn btn-sm btn-danger btn-circle delete-role-btn" data-id="<?= $row['id'] ?>">
                              <i class="fas fa-trash"></i>
                            </a>
                          </td>
                        </tr>
                      <?php } ?>
                    </tbody>
                  <?php } else { ?>
                    <tbody>
                      <tr>
                        <td>
                          <p class="text-center">No roles yet.</p>
                        </td>
                      </tr>
                    </tbody>
                  <?php } ?>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End of Main Content -->
    </div>
    <!-- End of Content Wrapper -->
  </div>
  <!-- End of Page Wrapper -->
  <?php require 'components/crud_user_dialog.php' ?>
  <?php require 'components/barangay_selector_dialog.php' ?>
</body>

</html>