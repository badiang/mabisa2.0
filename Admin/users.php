<?php
error_reporting(E_ALL ^ E_NOTICE);
date_default_timezone_set('Asia/Manila');
session_set_cookie_params(0);
session_start();

// if (!$_SESSION['id']) {
//   header('location:../actions/logout.php');
// }
require_once '../db/db.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <?php require 'common/head.php' ?>
  <script src="../js/users.js" defer></script>
  <script src="../js/confirmation.js" defer></script>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <?php
    $isUsersPhp = true;
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
                <h3 class="m-0 font-weight-bold text-primary">Users</h3>
              </div>
              <div style="float: right;">
                <button class="btn btn-sm btn-primary add-user-btn" data-toggle="modal" data-target="#crud-user">Add User</button>
              </div>
            </div>
            <div class="card-body" id="viewLocation">
              <div class="table-responsive">
                <table class="table table-bordered" id="user_dataTable" width="100%" cellspacing="0">
                  <?php
                  // $stmt = $pdo->prepare("SELECT COUNT(*) FROM pos.received_from where area_code=? and cmp_code=? ");
                  $stmt = $pdo->prepare("SELECT COUNT(*) FROM user_policy");
                  $stmt->execute();
                  $count = $stmt->fetchColumn();

                  if ($count != 0) {
                  ?>
                    <thead>
                      <tr>
                        <th>Fullname</th>
                        <th>Username</th>
                        <th>Role</th>
                        <th>Barangay</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <?php if ($count > 10) { ?>
                      <tfoot>
                        <tr>
                          <th>Fullname</th>
                          <th>Username</th>
                          <th>Role</th>
                          <th>Barangay</th>
                          <th>Action</th>
                        </tr>
                      </tfoot>
                    <?php } ?>
                    <tbody>
                      <?php
                      require_once '../models/role_model.php';
                      $query = $pdo->prepare("select * from user_policy");
                      $query->execute();
                      while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
                      ?>
                        <tr>
                          <td><?php echo $row['fullName'] ?></td>
                          <td><?php echo $row['username'] ?></td>
                          <td><?php echo getRole($row['accessLevel'])->toString() ?></td>
                          <td><?php echo $row['barangay'] ?></td>
                          <td>
                            <a href="#edit-user" class="btn btn-sm btn-info btn-circle edit-user-btn"
                              data-toggle="modal" data-target="#crud-user" data-id="<?= $row['id'] ?>">
                              <i class="fas fa-edit"></i>
                            </a>
                            <a href="#delete-user"
                              class="btn btn-sm btn-danger btn-circle delete-user-btn" data-id="<?= $row['id'] ?>">
                              <i class="fas fa-trash"></i>
                            </a>
                          </td>
                        </tr>
                      <?php } ?>
                    </tbody>
                  <?php } else { ?>
                    <tbody>
                      <tr>
                        <td>No Results Found..</td>
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
</body>

</html>