const modalLabel = document.getElementById('modalLabel');
const passLabel = document.getElementById('passwordLabel');
let origPassLabel = 'Password';
let origModalLabel = 'New user';

let currentUserID;
/** @var {array} */
let roles = [];
const defaultAlert = '<div class="alert"></div>';
let editMode = undefined;
addPhonePrepend();

//cancel button confirmation
$('#cancel-btn').on('click', async () => {
  const confirm = await showConfirmationDialog(
    'Are you sure? Your changes will not be saved.',
    'No',
    'Yes',
  );
  if (confirm) {
    history.back();
  } else {
    // console.log('cancelled');
  }
});

// for showing modal after clicking edit btn`
// using document.addEventListener is better than document.querySelectorAll().forEach()
// because the latter only works when the element in query is static (not dynamically added/removed)
// reset the form element in crud user dialog
$('#crud-user').on('show.bs.modal', function(event) {
  if (loading) return;
  toggleLoading();

  if ($(event.relatedTarget).hasClass('edit-user-btn')) {
    // console.log("editing");
    editMode = true;

    // Change the h5 with id 'modalLabel' under the modal with id="crud-user" to "Edit user"
    origModalLabel = modalLabel.textContent;
    modalLabel.textContent = 'Edit User'; // Update the modal label text

    // Change the h5 with id 'modalLabel' under the modal with id="crud-user" to "Edit user"
    origPassLabel = passLabel.textContent;
    passLabel.textContent = 'New Password'; // Update the modal label text

    // hide confirm password because we are editing
    $('#confirmPassField').css('display', 'none');
    currentUserID = $(event.relatedTarget).data('id'); // Get the user ID from the clicked button
    // TODO: fetch the existing user data and assign it
    document.getElementById('loadingSpinner').classList.remove('d-flex');
    document.getElementById('loadingSpinner').classList.add('d-none');
    document
      .getElementById('crud-user-modal-content')
      .classList.remove('d-none');
  } else if ($(event.relatedTarget).hasClass('add-user-btn')) {
    // console.log("adding");
    editMode = false;
    addPhonePrepend();
    // Hide the loading spinner and show the modal content
    document.getElementById('loadingSpinner').classList.remove('d-flex');
    document.getElementById('loadingSpinner').classList.add('d-none');
    document
      .getElementById('crud-user-modal-content')
      .classList.remove('d-none');
    // Show the edit modal crud-user
  }
  toggleLoading();
});

// reset the form element in crud user dialog
$('#crud-user').on('hidden.bs.modal', () => {
  // console.log('modal hidden');
  const form = this.querySelector('form');
  if (form) form.reset();

  // revert the text to original
  modalLabel.textContent = origModalLabel;
  passLabel.textContent = origPassLabel;

  // hide barangay option
  const barangayDiv = document.getElementById('barangayDiv');
  barangayDiv.style.display = 'none';

  // display confirm pass again
  $('#confirmPassField').css('display', 'inline-block');

  // remove the userID
  currentUserID = undefined;

  // clear selected barangays
  selectedBarangays = [];

  // clear alerts
  $('#alert').html(defaultAlert);
});

// handle role changes
$('#roleSelect').on('change', async e => {
  // console.log('event fired');
  $('#roleSelect').prop('disabled', true); // Disable select
  if (loading) return;
  toggleLoading();
  // console.log('not loading');

  // id of the role
  /** @type {string} */
  let selectedOption = e.target.value;
  // console.log('Current selected option is: ' + selectedOption);

  // reset divs
  $('#genPermList').empty();
  $('#genPermNoPerm').css('display', 'none');
  $('#barPermContainer').css('display', 'none');
  if ($.fn.DataTable.isDataTable('#barPermTable')) {
    $('#barPermTable')
      .DataTable()
      .destroy();
  }

  try {
    // show/hide general permissions
    await new Promise((res, rej) => {
      // 5-second timeout if ajax never completes
      setTimeout(() => {
        console.log('Request timed out');
        rej('Timeout');
      }, 5000);

      $.ajax({
        url: '../api/get_general_permissions.php',
        type: 'POST',
        data: {
          role_id: selectedOption,
        },
        success: permissions => {
          console.log('Permissions are : ' + permissions);
          let testPermissions = JSON.parse(permissions);

          // if super admin, just display "all permissions are granted"
          if (!testPermissions || testPermissions.length == 0) {
            console.log('blank global permissions!');
            $('#genPermNoPerm').css('display', 'block');
          } else if (permissions == '"Super Admin"') {
            console.log('Super admin');
            if (!$('#superAdminLabel').length) {
              $('#genPermList').append(`
            <li class="m-1" id="superAdminLabel">
            <h5>All permissions are automatically granted to super admins.</h5>
                     </li>`);
            }
          }
          // if not super admin, then added the permissions to the list
          else {
            // remove the superAdminLabel if present
            if ($('#superAdminLabel').length) $('#superAdminLabel').remove();
            // convert permissions to a object first
            permissions = JSON.parse(permissions);
            // populate the permissions (already filtered by server)
            for (let [key, value] of Object.entries(permissions)) {
              $('#genPermList').append(`
                  <li class="d-inline-block m-1">
                             <div class="input-group mb-3 d-flex flex-row">
                               <div class="input-group-prepend">
                                 <div class="input-group-text">
                                   <input type="checkbox" name="${key}" id="${key}" value="true" checked>
                                 </div>
                               </div>
                               <div class="card card-body border-secondary">
                                 <label for="${key}" id="label-${value}">${key.replaceAll(
                '_',
                ' ',
              )}</label>
                               </div>
                             </div>
                           </li>`);
            }
          }
          $('#genPermContainer').css('display', 'block');
          $('#noRoleSelected').css('display', 'none');
          res();
        },
        error: res => {
          console.log('Error: ' + JSON.stringify(res));
          rej();
        },
      });
    });

    // get barangay permissions
    await new Promise((resolve, rej) => {
      // 5-second timeout if ajax never completes
      setTimeout(() => {
        console.log('Request timed out');
        rej('Timeout');
      }, 5000);
      $.ajax({
        url: '../api/get_barangay_permissions.php',
        type: 'POST',
        data: {
          role_id: selectedOption,
        },
        success: res => {
          // console.log('bar permissions are : ' + res);
          if (!res) {
            rej();
            return;
          }
          const barTableData = JSON.parse(res);
          $('#barPermTable').DataTable({
            data: barTableData,
            columns: [
              { data: 'barangay', title: 'Barangay' },
              {
                data: 'indicators',
                title: 'Indicators',
                render: function(data, type, row) {
                  if (Array.isArray(data)) {
                    return data
                      .map(
                        ind =>
                          `<strong>Code: ${ind['code']}</strong>:<br> ${ind['description']}`,
                      )
                      .join('<br>');
                  } else if (typeof data == 'object') {
                    return `<strong>Code: ${data.code}</strong><br>${data.description}`;
                  }
                  // console.log('Not array in render');
                  // console.log(typeof data);
                  return data; // Default display if not an array
                },
              },
              {
                data: 'available_perms',
                title: 'Permissions',
                render: function(data, type, row) {
                  if (Array.isArray(data)) {
                    return data
                      .map(val => {
                        const uniqueID = `${row['barangay']}-${row['indicators']['code']}-${val}`;
                        // TODO: add a ternary to check if it is taken or not.
                        // CREATE MODE: if taken, mark with check and disable
                        // EDIT MODE: if taken and user id match, mark with check. If taken and not user match, then check and disable
                        return `<li class="d-inline-block m-1">
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <div class="input-group-text">
                      <input type="checkbox" name="${uniqueID}" id="${uniqueID}" value="true">
                    </div>
                  </div>
                  <div class="card card-body border-secondary">
                    <label for="${uniqueID}" id="label-${uniqueID}">${val.replaceAll(
                          '_',
                          ' ',
                        )}</label>
                  </div>
                </div>
              </li>`;
                      })
                      .join('<br>');
                  }
                  // console.log('unknown data');
                  // console.log(typeof data);
                  return data; // Default display if not an array
                },
              },
            ],
            // rowsGroup: [
            //   0, // Merge identical "Barangay" cells
            // ],
            drawCallback: function(settings) {
              var api = this.api();
              var prev = null;

              api
                .rows({ page: 'current' })
                .every(function(rowIdx, tableLoop, rowLoop) {
                  var data = this.data();
                  if (prev && prev.barangay === data.barangay) {
                    $(this.node())
                      .find('td:first')
                      .html('');
                  } else {
                    prev = data;
                  }
                });
            },
          });
          $('#barPermContainer').css('display', 'block');
          resolve();
        },
        error: res => {
          console.log('Error: ' + JSON.stringify(res));
          rej();
        },
      });
    });
  } catch (error) {
    //
  }
  toggleLoading();
  $('#roleSelect').prop('disabled', false); // Disable select
});

// show/hide in password field
document.getElementById('passEye').addEventListener('click', function() {
  // console.log('eye toggled');
  const passwordInput = document.getElementById('pass');
  const icon = this.children[0];

  // Toggle the input type
  if (passwordInput.type === 'password') {
    passwordInput.type = 'text';
    icon.classList.remove('fa-eye');
    icon.classList.add('fa-eye-slash');
  } else {
    passwordInput.type = 'password';
    icon.classList.remove('fa-eye-slash');
    icon.classList.add('fa-eye');
  }
});

// show/hide password in confirm pass field
document.getElementById('confirmPassEye').addEventListener('click', function() {
  // console.log('eye toggled (confirm pass)');
  const passwordInput = document.getElementById('confirmPass');
  const icon = this.children[0];
  // console.log(icon.classList);
  // Toggle the input type
  if (passwordInput.type === 'password') {
    passwordInput.type = 'text';
    icon.classList.remove('fa-eye');
    icon.classList.add('fa-eye-slash');
  } else {
    passwordInput.type = 'password';
    icon.classList.remove('fa-eye-slash');
    icon.classList.add('fa-eye');
  }
});

// when submitting the form
$('#save-user-btn').on('click', async e => {
  if (loading) return;
  toggleLoading();

  // get all users to compare existing usernames & emails
  const users = await fetch(`../api/get_users.php`).then(response => {
    if (!response.ok) {
      $('#alert').html(
        '<div class="alert alert-danger alert-dismissible fade show" role="alert">' +
          '<strong>Error!</strong> Network error!.' +
          '<button type="button" class="close" data-dismiss="alert" aria-label="Close">' +
          '<span aria-hidden="true">&times;</span>' +
          '</button>' +
          '</div>',
      );
      throw new Error('Network problem!');
    }
    return response.json();
  });
  let ok = true;

  // console.log($("#username").val());
  // get input values
  const username = $('#username')
    .val()
    ?.trim();
  const fullName = $('#fullName')
    .val()
    ?.trim();
  const email = $('#email')
    .val()
    ?.trim();
  const mobileNum = $('#mobileNum')
    .val()
    ?.trim();
  const confirmPass = $('#confirmPass')
    .val()
    ?.trim();
  const password = $('#pass')
    .val()
    ?.trim();

  function resetFieldStates() {
    $('#username').removeClass('is-invalid');
    $('#username')
      .find('.invalid-feedback')
      .first()
      .text('');
    $('#fullName').removeClass('is-invalid');
    $('#fullName')
      .find('.invalid-feedback')
      .first()
      .text('');
    $('#email').removeClass('is-invalid');
    $('#email')
      .find('.invalid-feedback')
      .first()
      .text('');
    $('#mobileNum').removeClass('is-invalid');
    $('#mobileNum')
      .find('.invalid-feedback')
      .first()
      .text('');
    $('#confirmPass').removeClass('is-invalid');
    $('#confirmPass')
      .find('.invalid-feedback')
      .first()
      .text('');
    $('#pass').removeClass('is-invalid');
    $('#pass')
      .find('.invalid-feedback')
      .first()
      .text('');
  }

  function addError(element, message, customFeedbackElement) {
    if (customFeedbackElement) {
      element
        .find('.invalid-feedback')
        .first()
        .text(message);
    } else {
      element
        .next('.invalid-feedback')
        .first()
        .text(message);
    }
    element.addClass('is-invalid');
  }
  resetFieldStates();

  // PASSWORD
  if (!editMode && (password == '' || password == null)) {
    addError($('#pass'), 'Password cannot be empty.', $('#passField'));
    ok = false;
  }
  if (!editMode && password.length < 8) {
    addError($('#pass'), 'Password must be at least 8 characters.');
    ok = false;
  }
  if (!editMode && password.length > 100) {
    addError($('#pass'), 'Password too long.');
    ok = false;
  }

  // CONFIRM PASS
  if (!editMode && (confirmPass == '' || confirmPass == null)) {
    addError(
      $('#confirmPass'),
      'Please type in the password again.',
      $('#confirmPassField'),
    );
    ok = false;
  }
  if (!editMode && password !== confirmPass) {
    addError($('#confirmPass'), 'Passwords do not match.');
    ok = false;
  }

  // USERNAME
  if (username == '' || username == null) {
    addError($('#username'), 'Username cannot be empty.');
    ok = false;
  }
  if (username.length > 100) {
    addError($('#pass'), 'Username too long.');
    ok = false;
  }
  if (
    !editMode &&
    users.some(user => user.username === username && user.id != currentUserID)
  ) {
    addError($('#username'), 'Username already taken.');
    ok = false;
  }

  // FULLNAME
  if (fullName == '' || fullName == null) {
    addError($('#fullName'), 'Name cannot be empty.');
    ok = false;
  }
  if (fullName.length > 100) {
    addError($('#fullName'), 'Name too long.');
    ok = false;
  }

  // EMAIL
  if (!validEmail(email)) {
    addError($('#email'), 'Invalid email.');
    ok = false;
  }
  if (
    !editMode &&
    users.some(user => user.email === email && user.id != currentUserID)
  ) {
    addError($('#email'), 'Email already taken.');
    ok = false;
  }
  if (email.length > 100) {
    addError($('#email'), 'Email too long.');
    ok = false;
  }
  if (email == '' || email == null) {
    addError($('#email'), 'Email cannot be empty.');
    ok = false;
  }

  // MOBILE NUMBER
  if (!validMobileNum(mobileNum)) {
    addError($('#mobileNum'), 'Invalid mobile number.');
    ok = false;
  }
  if (mobileNum == '+63' || mobileNum == '' || mobileNum == null) {
    addError($('#mobileNum'), 'Mobile number cannot be empty.');
    ok = false;
  }

  // ROLES
  const rolesForm = new FormData($('#user-roles-form').get(0));
  for (const entry of rolesForm.entries()) {
    console.log(entry);
  }

  if (!ok) {
    console.log('form not ok!');
    toggleLoading();
    return;
  }

  $('#alert').html(defaultAlert);
  const detailsForm = new FormData($('#user-details-form').get(0));
  if (!editMode) {
    console.log('not edit mode');
    $.ajax({
      type: 'POST',
      url: '../api/create_user.php',
      data: detailsForm, // Use 'data' instead of 'body'
      processData: false, // Prevent jQuery from processing the FormData
      contentType: false, // Prevent jQuery from setting content type
      success: function(result) {
        // check if null, empty, false, 0, infinity, etc
        if (!result) {
          $('#crud-user').modal('hide');
          location.reload();
          $('#main-toast-container').append(
            addToast('Success!', 'User created successfully.'),
          );
        } else {
          console.log('error!: ' + result);
        }
      },
    });
  } else {
    detailsForm.append('id', currentUserID);
    $.ajax({
      type: 'POST',
      url: '../api/edit_user.php',
      data: detailsForm, // Use 'data' instead of 'body'
      processData: false, // Prevent jQuery from processing the FormData
      contentType: false, // Prevent jQuery from setting content type
      success: function(result) {
        // check if null, empty, false, 0, infinity, etc
        if (!result) {
          $('#crud-user').modal('hide');
          location.reload();
          $('#main-toast-container').append(
            addToast('Success!', 'User successfully edited.'),
          );
        } else {
          console.log('error!: ' + result);
        }
      },
    });
  }
  toggleLoading();
});
