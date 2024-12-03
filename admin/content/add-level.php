<?php
require_once 'controller/connection.php';
include 'controller/administrator-validation.php';

if (isset($_GET['delete'])) {
    $idDelete = $_GET['delete'];
    $query = mysqli_query($connection, "DELETE FROM level WHERE id='$idDelete'");
    header("Location: ?page=level&delete=success");
    die;
} else if (isset($_GET['edit'])) {
    $idEdit = $_GET['edit'];
    $queryEdit = mysqli_query($connection, "SELECT * FROM level WHERE id='$idEdit'");
    $rowEdit = mysqli_fetch_assoc($queryEdit);
    if (isset($_POST['edit'])) {
        $level_name = $_POST['level_name'];
        $phone = $_POST['phone'];
        $address = $_POST['address'];

        $queryValidation = mysqli_query($connection, "SELECT * FROM level WHERE id != '$idEdit' AND level_name = '$level_name'");
        if (mysqli_num_rows($queryValidation) > 0) {
            header("location: ?page=add-level&edit=" . $idEdit . "&error=nameAlreadyRegistered");
            die;
        }

        $queryEdit = mysqli_query($connection, "UPDATE level SET level_name='$level_name' WHERE id='$idEdit'");
        header("Location: ?page=level&edit=success");
        die;
    }
} else if (isset($_POST['add'])) {
    $level_name = $_POST['level_name'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];

    $queryValidation = mysqli_query($connection, "SELECT * FROM level WHERE level_name = '$level_name'");
    if (mysqli_num_rows($queryValidation) > 0) {
        header("location: ?page=add-level&error=nameAlreadyRegistered");
        die;
    }

    $queryAdd = mysqli_query($connection, "INSERT INTO level (level_name) VALUES ('$level_name')");
    header("Location: ?page=level&add=success");
    die;
}
?>
<?php if (isset($_GET['error']) && $_GET['error'] == 'nameAlreadyRegistered'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger top-0 start-50 translate-middle-x show" role="alert"
        aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Data Level</div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">Do not use the same level name as others.</div>
    </div>
<?php endif ?>
<div class="card shadow">
    <div class="card-header">
        <h3><?= isset($_GET['edit']) ? 'Edit' : 'Add' ?> Level</h3>
    </div>
    <div class="card-body">
        <form action="" method="post">
            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label for="" class="form-label">Level Name</label>
                    <input type="text" class="form-control" id="" name="level_name" placeholder="Enter level name"
                        value="<?= isset($_GET['edit']) ? $rowEdit['level_name'] : '' ?>" required>
                </div>
            </div>
            <div class="" align="right">
                <a href="?page=level" class="btn btn-secondary">Back</a>
                <button type="submit" class="btn btn-primary"
                    name="<?php echo isset($_GET['edit']) ? 'edit' : 'add' ?>">
                    <?php echo isset($_GET['edit']) ? 'Edit' : 'Add' ?>
                </button>
            </div>
        </form>
    </div>
</div>