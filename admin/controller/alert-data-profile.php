<!-- my-profile -->
<?php if (isset($_GET['page']) && isset($_GET['page']) == 'my-profile' && isset($_GET['edit']) && $_GET['edit'] == 'success'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-primary top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">My Profile</div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body"> Your order has been <span class="badge bg-success">edited</span> successfully.</div>
    </div>
<?php elseif (isset($_GET['page']) && isset($_GET['page']) == 'my-profile' && isset($_GET['edit']) && $_GET['edit'] == 'errorExtension'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">My Profile</div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body"> Wrong file extension!</div>
    </div>
    <!-- end my-profile -->

    <!-- change-password -->
<?php elseif (isset($_GET['page']) && isset($_GET['page']) == 'change-password' && isset($_GET['changePassword']) && $_GET['changePassword'] == 'success'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-success top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Change Password</div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body"> Change Password success!</div>
    </div>
<?php elseif (isset($_GET['page']) && isset($_GET['page']) == 'change-password' && isset($_GET['changePassword']) && $_GET['changePassword'] == 'error'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Change Password</div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body"> Unable to change password, please try again.</div>
    </div>
<?php elseif (isset($_GET['page']) && isset($_GET['page']) == 'change-password' && isset($_GET['changePassword']) && $_GET['changePassword'] == 'notMatch'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Change Password</div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">New and confirm passwords do not match, please try again.</div>
    </div>
<?php elseif (isset($_GET['page']) && isset($_GET['page']) == 'change-password' && isset($_GET['changePassword']) && $_GET['changePassword'] == 'wrongPassword'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger top-0 start-50 translate-middle-x show" role="alert" aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Change Password</div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">Wrong old password, please try again.</div>
    </div>
    <!-- end change-password -->
<?php endif ?>