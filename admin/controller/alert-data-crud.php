<?php if (isset($_GET['edit']) && $_GET['edit'] == 'success'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-primary top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Data <?= ucfirst($_GET['page']) ?></div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">Your data has been <span class="badge bg-warning">edited</span> successfully.</div>
    </div>
<?php elseif (isset($_GET['delete']) && $_GET['delete'] == 'success'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-primary top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Data <?= ucfirst($_GET['page']) ?></div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">Your data has been <span class="badge bg-danger">deleted</span> successfully. </div>
    </div>
<?php elseif (isset($_GET['add']) && $_GET['add'] == 'success'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-primary top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Data <?= ucfirst($_GET['page']) ?></div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">Your data has been <span class="badge bg-info">added</span> successfully.</div>
    </div>
<?php elseif (isset($_GET['pickup']) && $_GET['pickup'] == 'success'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-primary top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Data <?= ucfirst($_GET['page']) ?></div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body"> Your order has been <span class="badge bg-info">Picked Up</span> successfully.</div>
    </div>
<?php endif ?>