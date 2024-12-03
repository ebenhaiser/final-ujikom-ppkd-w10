<?php
require_once 'controller/connection.php';
include 'controller/administrator-validation.php';

if (isset($_GET['delete'])) {
    $idDelete = $_GET['delete'];
    $query = mysqli_query($connection, "DELETE FROM user WHERE id='$idDelete'");
    header("Location: ?page=user&delete=success");
    die;
} else if (isset($_GET['edit'])) {
    $idEdit = $_GET['edit'];
    $queryEdit = mysqli_query($connection, "SELECT * FROM user WHERE id='$idEdit'");
    $rowEdit = mysqli_fetch_assoc($queryEdit);
    if (isset($_POST['edit'])) {
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'] ? $_POST['password'] : $rowEdit['password'];
        $id_level = $_POST['id_level'];

        $queryValidationEmail = mysqli_query($connection, "SELECT * FROM user WHERE id != '$id_level' AND email = '$email'");
        if (mysqli_num_rows($queryValidationEmail) > 0) {
            header("location: ?page=add-user&edit=" . $idEdit . "&error=emailAlreadyRegistered");
            die;
        }

        $queryEdit = mysqli_query($connection, "UPDATE user SET username='$username', email='$email', password='$password', id_level='$id_level' WHERE id='$idEdit'");
        header("Location: ?page=user&edit=success");
        die;
    }
} else if (isset($_POST['add'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $id_level = $_POST['id_level'];

    $queryValidationEmail = mysqli_query($connection, "SELECT * FROM user WHERE email = '$email'");
    if (mysqli_num_rows($queryValidationEmail) > 0) {
        header("location: ?page=add-user&error=emailAlreadyRegistered&email=" . $email . "&username=" . $username);
        die;
    }

    $queryAdd = mysqli_query($connection, "INSERT INTO user (username, email, password, id_level) VALUES ('$username', '$email', '$password', '$id_level')");
    header("Location: ?page=user&add=success");
    die;
}

$queryLevel = mysqli_query($connection, "SELECT * FROM level");
?>
<?php if (isset($_GET['error']) && $_GET['error'] == 'emailAlreadyRegistered'): ?>
    <div class="bs-toast toast toast-placement-ex m-2 fade bg-danger top-0 start-50 translate-middle-x show" role="alert"
        aria-live="assertive" aria-atomic="true" data-delay="2000">
        <div class="toast-header">
            <i class="bx bx-edit me-2"></i>
            <div class="me-auto fw-semibold">Login</div>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">This EMAIL is already registered.</div>
    </div>
<?php endif ?>
<div class="card shadow">
    <div class="card-header">
        <h3><?= isset($_GET['edit']) ? 'Edit' : 'Add' ?> User</h3>
    </div>
    <div class="card-body">
        <form action="" method="post">
            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label for="username" class="form-label">Nama</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Enter Name"
                        value="<?= !isset($_GET['email']) && isset($_GET['edit']) ? $rowEdit['username'] : '' ?><?= isset($_GET['error']) && isset($_GET['username']) ? $_GET['username'] : '' ?>"
                        required>
                </div>
                <div class=" col-sm-6 mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email"
                        value="<?= !isset($_GET['email']) && isset($_GET['edit']) ? $rowEdit['email'] : '' ?><?= isset($_GET['error']) && isset($_GET['email']) ? $_GET['email'] : '' ?>"
                        required>
                </div>
                <div class="col-sm-6 mb-3">
                    <label for="level" class="form-label">Level</label>
                    <select class="form-control" name="id_level" id="">
                        <option value=""> -- Add Level -- </option>
                        <?php while ($rowLevel = mysqli_fetch_assoc($queryLevel)) : ?>
                            <option value="<?= $rowLevel['id'] ?>"
                                <?= isset($_GET['edit']) && ($rowLevel['id'] == $rowEdit['id_level']) ? 'selected' : '' ?>>
                                <?= $rowLevel['level_name'] ?></option>
                        <?php endwhile ?>
                    </select>
                </div>
                <div class="col-sm-6 form-group mb-3 form-password-toggle">
                    <label for="" class="form-label">Password</label>
                    <div class="input-group input-group-merge">
                        <input type="password" id="password" class="form-control" name="password"
                            placeholder="Enter password" aria-describedby="password" />
                        <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                    </div>
                </div>
            </div>
            <div class="" align="right">
                <a href="?page=user" class="btn btn-secondary">Back</a>
                <button type="submit" class="btn btn-primary"
                    name="<?php echo isset($_GET['edit']) ? 'edit' : 'add' ?>">
                    <?php echo isset($_GET['edit']) ? 'Edit' : 'Add' ?>
                </button>
            </div>
        </form>
    </div>
</div>