<?php
require_once 'controller/connection.php';


$idEdit = $_SESSION['id'];
$queryEdit = mysqli_query($connection, "SELECT * FROM user WHERE id='$idEdit'");
$rowEdit = mysqli_fetch_assoc($queryEdit);

if (isset($_POST['edit'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];

    $queryValidationEmail = mysqli_query($connection, "SELECT * FROM user WHERE id != '$idEdit' AND email = '$email'");
    if (mysqli_num_rows($queryValidationEmail) > 0) {
        header("location: ?page=my-profile&error=emailAlreadyRegistered");
        die;
    }

    if (!empty($_FILES['photo']['name'])) {
        $namaFotoLama = $_FILES['photo']['name'];

        $ext = array('jpg', 'jpeg', 'png', 'jfif', 'webp', 'heic');
        $img_ext = pathinfo($namaFotoLama, PATHINFO_EXTENSION);

        if (!in_array($img_ext, $ext)) {
            header("Location: ?page=my-profile&edit=errorExtension");
            die;
        } else {
            if (file_exists('img/profile_picture/' . $rowEdit['profile_picture'])) {
                unlink('img/profile_picture/' . $rowEdit['profile_picture']);
            }
            $new_image_name = "profile_picture" . $idEdit . "." . $img_ext;
            move_uploaded_file($_FILES['photo']['tmp_name'], 'img/profile_picture/' . $new_image_name);
            $queryEdit = mysqli_query($connection, "UPDATE user SET username='$username', email='$email', profile_picture='$new_image_name' WHERE id='$idEdit'");
        }
    }
    $queryEdit = mysqli_query($connection, "UPDATE user SET username='$username', email='$email' WHERE id='$idEdit'");
    header("Location: ?page=my-profile&edit=success");
    die;
}

$queryLevel = mysqli_query($connection, "SELECT * FROM level");

// if ((isset($_GET['pg']) == 'my-profile') && (isset($_GET['edit']) == 'success')) {
//     header('location: ?page=my-profile');
//     die;
// }

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
        <h3>My Profile</h3>
    </div>
    <div class="card-body">
        <?php include 'controller/alert-data-profile.php' ?>
        <img width="150px"
            src="<?= !empty($rowEdit['profile_picture']) && file_exists('img/profile_picture/' . $rowEdit['profile_picture']) ? 'img/profile_picture/' . $rowEdit['profile_picture'] : 'https://placehold.co/100' ?>"
            alt="" class="mt-4 rounded">
        <hr>
        <form action="" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label for="name" class="form-label">Nama</label>
                    <input type="text" class="form-control" id="name" name="username" placeholder="Masukkan nama"
                        value="<?= isset($rowEdit['username']) ? $rowEdit['username'] : '' ?>" required>
                </div>
                <div class="col-sm-6 mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Masukkan email"
                        value="<?= isset($rowEdit['email']) ? $rowEdit['email'] : '' ?>" required>
                </div>

                <div class="col-sm-6 mb-3">
                    <label for="level" class="form-label">Level</label>
                    <select class="form-control" name="id_level" id="" disabled="true">
                        <option value=""> -- Add Level -- </option>
                        <?php while ($rowLevel = mysqli_fetch_assoc($queryLevel)) : ?>
                            <option value="<?= $rowLevel['id'] ?>"
                                <?= isset($rowEdit['id_level']) && ($rowLevel['id'] == $rowEdit['id_level']) ? 'selected' : '' ?>>
                                <?= $rowLevel['level_name'] ?></option>
                        <?php endwhile ?>
                    </select>
                </div>
                <div class="col-sm-6 mb-3">
                    <label for="photoProfile" class="form-label">Foto Profil</label>
                    <input type="file" class="form-control" id="profile_picture" name="photo">
                </div>
            </div>
            <div class="">
                <button type="submit" class="btn btn-primary" name="edit">
                    Edit Profile
                </button>
            </div>
        </form>
    </div>
</div>