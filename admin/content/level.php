<?php
include 'controller/administrator-validation.php';
$queryData = mysqli_query($connection, "SELECT * FROM level ORDER BY id ASC");
?>
<div class="card shadow">
    <div class="card-header">
        <h3>Data Level</h3>
    </div>
    <div class="card-body">
        <?php include 'controller/alert-data-crud.php' ?>
        <div align="right" class="button-action">
            <a href="?page=add-level" class="btn btn-primary"><i class='bx bx-plus'></i></a>
        </div>
        <table class="table table-bordered table-striped table-hover table-responsive mt-3">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Level Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                while ($rowData = mysqli_fetch_assoc($queryData)) : ?>
                    <tr>
                        <td><?= $no++ ?></td>
                        <td><?= isset($rowData['level_name']) ? $rowData['level_name'] : '-' ?></td>
                        <td>
                            <a href="?page=add-level&edit=<?php echo $rowData['id'] ?>">
                                <button class="btn btn-secondary">
                                    <i class="tf-icon bx bx-edit bx-22px"></i>
                                </button>
                            </a>
                            <a onclick="return confirm ('Apakah anda yakin akan menghapus data ini?')"
                                href="?page=add-level&delete=<?php echo $rowData['id'] ?>">
                                <button class="btn btn-danger">
                                    <i class="tf-icon bx bx-trash bx-22px"></i>
                                </button>
                            </a>
                        </td>
                    </tr>
                <?php endwhile; // End While 
                ?>
            </tbody>
        </table>
        <div class="mt-4" align="right">
            <span class="me-4"><i class="bx bx-plus"></i> = Add</span>
            <span class="me-4"><i class="bx bx-edit"></i> = Edit</span>
            <span><i class="bx bx-trash"></i> = Delete</span>
        </div>
    </div>
</div>