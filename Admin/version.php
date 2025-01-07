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
</head>

<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">
    <!-- Sidebar -->
    <?php require 'common/sidebar.php' ?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      <!-- Main Content -->
      <div id="content">
        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn -link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <div class="header-title">
            MABILISANG AKSYON INFORMATION SYSTEM OF ALORAN
          </div>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">
            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown"
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
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for
                    your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">Message Center</h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="../img/undraw_profile_1.svg" alt="..." />
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">
                      Hi there! I am wondering if you can help me with a
                      problem I've been having.
                    </div>
                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="../img/undraw_profile_2.svg" alt="..." />
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">
                      I have the photos that you ordered last month, how would
                      you like them sent to you?
                    </div>
                    <div class="small text-gray-500">Jae Chun · 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="../img/undraw_profile_3.svg" alt="..." />
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">
                      Last month's report looks great, I am very happy with
                      the progress so far, keep up the good work!
                    </div>
                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="..." />
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">
                      Am I a good boy? The reason I ask is because someone
                      told me that people say this to all dogs, even if they
                      aren't good...
                    </div>
                    <div class="small text-gray-500">
                      Chicken the Dog · 2w
                    </div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                <img class="img-profile rounded-circle" src="../img/undraw_profile.svg" />
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="../index_main.php" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>
          </ul>
        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
          <div class="row">
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">Criteria Versions</h1>
              <div class="d-sm-flex align-items-center">
                <button class="btn btn-success btn-sm" id="add-row">
                  Add New Criteria Version
                </button>
              </div>
            </div>
            <table class="table">
              <thead>
                <tr>
                  <th scope="col">SHORT DEFINITION</th>
                  <th scope="col">DESCRIPTION</th>
                  <th scope="col">ACTIVE YEAR</th>
                  <th scope="col">ACTIVATE</th>
                  <th scope="col">EDIT</th>
                  <th scope="col">DELETE</th>
                </tr>
              </thead>
              <tbody>
                <!-- existing table rows -->
              </tbody>
            </table>
          </div>

          <!-- Modal for Adding New Criteria Version -->
          <div class="modal" tabindex="-1" id="addModal">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Add New Criteria Version</h5>
                </div>
                <div class="modal-body">
                  <form id="addForm">
                    <div class="mb-3">
                      <label for="addVersion" class="form-label">Short Definition</label>
                      <input type="text" class="form-control" id="addVersion" required />
                    </div>
                    <div class="mb-3">
                      <label for="addDescription" class="form-label">Description</label>
                      <input type="text" class="form-control" id="addDescription" required />
                    </div>
                    <div class="mb-3">
                      <label for="addYear" class="form-label">Active Year</label>
                      <input type="text" class="form-control" id="addYear" required />
                    </div>
                    <div class="mb-3 form-check">
                      <input type="checkbox" class="form-check-input" id="addActivate" />
                      <label class="form-check-label" for="addActivate">Activate</label>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-primary" id="saveAdd">
                    Save changes
                  </button>
                </div>
              </div>
            </div>
          </div>

          <!-- Modal for Editing -->
          <div class="modal" tabindex="-1" id="editModal">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Edit Criteria Version</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <form id="editForm">
                    <div class="mb-3">
                      <label for="editVersion" class="form-label">Short Definiton</label>
                      <input type="text" class="form-control" id="editVersion" required />
                    </div>
                    <div class="mb-3">
                      <label for="editDescription" class="form-label">Description</label>
                      <input type="text" class="form-control" id="editDescription" required />
                    </div>
                    <div class="mb-3">
                      <label for="editYear" class="form-label">Active Year</label>
                      <input type="text" class="form-control" id="editYear" required />
                    </div>
                    <div class="mb-3 form-check">
                      <input type="checkbox" class="form-check-input" id="editActivate" />
                      <label class="form-check-label" for="editActivate">Activate</label>
                    </div>
                  </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                    Close
                  </button>
                  <button type="button" class="btn btn-primary" id="saveEdit">
                    Save changes
                  </button>
                </div>
              </div>
            </div>
          </div>

          <script>
          document
            .getElementById("add-row")
            .addEventListener("click", () => {
              const modal = new bootstrap.Modal(
                document.getElementById("addModal")
              );
              modal.show();
            });

          document
            .getElementById("saveAdd")
            .addEventListener("click", () => {
              const tableBody = document.querySelector("tbody");
              const newRow = tableBody.insertRow();
              newRow.innerHTML = `
                                <td>${
                                  document.getElementById("addVersion").value
                                }</td>
                                <td>${
                                  document.getElementById("addDescription")
                                    .value
                                }</td>
                                <td>${
                                  document.getElementById("addYear").value
                                }</td>
                                <td>
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" role="switch" ${
                                          document.getElementById("addActivate")
                                            .checked
                                            ? "checked"
                                            : ""
                                        }>
                                    </div>
                                </td>
                                <td>
                                    <button class="btn btn-primary btn-sm edit-btn">Edit</button>
                                </td>
                                <td>
                                    <button class="btn btn-danger btn-sm delete-btn">Delete</button>
                                </td>
                            `;
              document
                .getElementById("addModal")
                .querySelector("form")
                .reset();
              const modal = new bootstrap.Modal(
                document.getElementById("addModal")
              );
              modal.hide();
            });

          document.addEventListener("click", (event) => {
            if (event.target.classList.contains("delete-btn")) {
              const row = event.target.closest("tr");
              row.remove();
            }

            if (event.target.classList.contains("edit-btn")) {
              const row = event.target.closest("tr");
              const version = row.cells[0].textContent;
              const description = row.cells[1].textContent;
              const year = row.cells[2].textContent;
              const activate = row.cells[3].querySelector("input").checked;

              // Populate modal fields
              document.getElementById("editVersion").value = version;
              document.getElementById("editDescription").value =
                description;
              document.getElementById("editYear").value = year;
              document.getElementById("editActivate").checked = activate;

              // Show the modal
              const modal = new bootstrap.Modal(
                document.getElementById("editModal")
              );
              modal.show();

              // Save the reference to the row being edited
              document.getElementById("saveEdit").onclick = () => {
                // Update the row with the edited values
                row.cells[0].textContent =
                  document.getElementById("editVersion").value;
                row.cells[1].textContent =
                  document.getElementById("editDescription").value;
                row.cells[2].textContent =
                  document.getElementById("editYear").value;
                row.cells[3].querySelector("input").checked =
                  document.getElementById("editActivate").checked;

                // Hide the modal after saving changes
                modal.hide();
              };
            }
          });
          </script>
        </div>
        <!-- /.container-fluid -->
      </div>
      <!-- End of Main Content -->

      <!-- Bootstrap core JavaScript-->
      <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

      <!-- Core plugin JavaScript-->
      <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

      <!-- Custom scripts for all pages-->
      <script src="../js/sb-admin-2.min.js"></script>

      <!-- Page level plugins -->
      <script src="../vendor/chart.js/Chart.min.js"></script>

      <!-- Page level custom scripts -->
      <script src="../js/demo/chart-area-demo.js"></script>
      <script src="../js/demo/chart-pie-demo.js"></script>
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    </div>
    <!-- End of Content Wrapper -->
  </div>
  <!-- End of Page Wrapper -->
</body>

</html>