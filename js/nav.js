function updateNavTitle() {
  const element = document.getElementById('mabisa2.0-title');
  if (window.innerWidth <= 500) {
    element.textContent = 'mabisa2.0';
  } else {
    element.textContent = 'MABILISANG AKSYON BARANGAY INFORMATION SYSTEM OF ALORAN';
  }
}

window.addEventListener('resize', updateNavTitle);
window.addEventListener('load', updateNavTitle);

document.getElementById('logoutBtn').addEventListener('click', async () => {
  if (loading) return;
  loading = true;
  /** @type {bool} */
  let isInFolder = $('#isInFolder').length != 0;

  console.log('is in folder: ' + isInFolder);

  const shouldLogout = await showConfirmationDialog(
    'Are you sure you want to logout?',
    'No',
    'Yes',
  );
  if (shouldLogout) {
    try {
      $.ajax({
        url: (isInFolder ? '../../' : '../') + 'api/logout.php',
        success: res => {
          console.log(res);
          if (isInFolder) {
            location.href = '../login.php';
          } else {
            location.href = 'login.php';
          }
          loading = false;
        },
        error: err => {
          console.error(err.responseText);
          loading = false;
        },
      });
    } catch (error) {
      console.log(error);
    }
  }
  loading = false;
});
