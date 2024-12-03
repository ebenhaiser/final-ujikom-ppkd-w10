<?php if (isset($_GET['edit']) && $_GET['edit'] == 'success'): ?>
    <div class="alert alert-primary alert-dismissible" role="alert">
        Your data has been <span class="badge bg-label-warning">Edited</span> successfully.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php elseif (isset($_GET['delete']) && $_GET['delete'] == 'success'): ?>
    <div class="alert alert-primary alert-dismissible" role="alert">
        Your data has been <span class="badge bg-label-danger">deleted</span> successfully.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php elseif (isset($_GET['add']) && $_GET['add'] == 'success'): ?>
    <div class="alert alert-primary alert-dismissible" role="alert">
        Your data has been <span class="badge bg-label-info">Added</span> successfully.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php elseif (isset($_GET['pickup']) && $_GET['pickup'] == 'success'): ?>
    <div class="alert alert-primary alert-dismissible" role="alert">
        Your order has been <span class="badge bg-label-info">Picked Up</span> successfully.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php endif ?>