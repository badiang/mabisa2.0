<?php
$pathPrepend = isset($isInFolder) ? '../' : '';
$doublePathPrepend = isset($isInFolder) ? '../../' : '../';
?>
<script src="<?= $doublePathPrepend ?>js/nav.js" defer></script>
<div class="d-none" id="isInFolder"></div> <!-- for letting js know that this file is nested in folder -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
  <!-- Sidebar Toggle (Topbar) -->
  <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
    <i class="fa fa-bars"></i>
  </button>

  <div class="header-title">
    MABILISANG AKSYON INFORMATION SYSTEM OF ALORAN
  </div>

  <!-- Topbar Navbar -->
  <ul class="navbar-nav ml-auto">
    <!-- Nav Item - Alerts -->
    <li class="nav-item dropdown no-arrow mx-1">
      <a class="nav-link dropdown-toggle" href="#alerts" id="alertsDropdown" role="button" data-toggle="dropdown"
        aria-haspopup="true" aria-expanded="false">
        <i class="fas fa-bell fa-fw"></i>
        <!-- Counter - Alerts -->
        <span class="badge badge-danger badge-counter">3+</span>
      </a>
      <!-- Dropdown - Alerts -->
      <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
        aria-labelledby="alertsDropdown">
        <h6 class="dropdown-header">Alerts Center</h6>
        <a class="dropdown-item d-flex align-items-center" href="#">
          <div class="mr-3">
            <div class="icon-circle bg-primary">
              <i class="fas fa-file-alt text-white"></i>
            </div>
          </div>
          <div>
            <div class="small text-gray-500">December 12, 2019</div>
            <span class="font-weight-bold">A new monthly report is ready to download!</span>
          </div>
        </a>
        <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
      </div>
    </li>

    <div class="topbar-divider d-none d-sm-block"></div>

    <!-- Nav Item - User Information -->
    <li class="nav-item dropdown no-arrow">
      <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
        aria-haspopup="true" aria-expanded="false">
        <span class="mr-2 mt-3 d-none d-lg-inline text-gray-600 small" style="font-size: 15px"><?= $userData['full_name'] ?? '' ?><br>
          <p class="text-right" style="font-size: 12px"><?= $userData['role'] ?? '' ?> &nbsp;</p>
        </span>
        <!-- TODO: render the user profile pic below -->
        <img class="img-profile rounded-circle"
          src="<?= !empty($userData['profile_pic']) && is_file($userData['profile_pic']) ? $userData['profile_pic'] : $doublePathPrepend . 'img/undraw_profile.svg' ?>" />
      </a>
      <!-- Dropdown - User Information -->
      <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
        <a class="dropdown-item" href="<?= $pathPrepend ?>settings.php">
          <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-600"></i>
          Settings
        </a>
        <a class="dropdown-item" href="<?= $pathPrepend ?>dashboard.php#maintenanceTable">
          <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-600"></i>
          Activity Log
        </a>
        <div class="dropdown-divider"></div>
        <a class="dropdown-item" id="logoutBtn">
          <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-600"></i>
          <span style="pointer-events: none;">Logout</span>
        </a>
      </div>
    </li>
  </ul>
</nav>
<?php require_once (isset($isInFolder) ? '../' : '') . 'components/confirmation_dialog.php'; ?>
<!-- End of Topbar -->