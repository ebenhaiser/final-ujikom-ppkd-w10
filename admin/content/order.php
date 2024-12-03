<?php
require_once 'controller/connection.php';
include 'controller/operator-validation.php';

$queryData = mysqli_query($connection, "SELECT trans_order.*, customer.customer_name FROM trans_order LEFT JOIN customer ON trans_order.id_customer = customer.id ORDER BY trans_order.order_status ASC, trans_order.updated_at DESC")
?>
<div class="card shadow">
    <div class="card-header">
        <h3>Data Order</h3>
    </div>
    <div class="card-body">
        <?php include 'controller/alert-data-crud.php' ?>
        <div align="right" class="button-action">
            <a href="?page=add-order" class="btn btn-primary"><i class='bx bx-plus'></i></a>
        </div>
        <table class="table table-bordered table-striped table-hover table-responsive mt-3">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Order Code</th>
                    <th>Customer Name</th>
                    <th>Order Start Date</th>
                    <th>Order End Date</th>
                    <th>Order Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                while ($rowData = mysqli_fetch_assoc($queryData)) : ?>
                    <tr>
                        <td><?= $no++ ?></td>
                        <td><?= isset($rowData['order_code']) ? $rowData['order_code'] : '-' ?></td>
                        <td><?= isset($rowData['customer_name']) ? $rowData['customer_name'] : '-' ?></td>
                        <td><?= isset($rowData['order_date']) ? $rowData['order_date'] : '-' ?></td>
                        <td><?= isset($rowData['order_end_date']) ? $rowData['order_end_date'] : '-' ?></td>
                        <?php $statusOrder = getOrderStatus($rowData['order_status']) ?>
                        <td><?= $statusOrder ?></td>
                        <td>
                            <a href="?page=add-order&view=<?php echo $rowData['id'] ?>">
                                <button class="btn btn-secondary">
                                    <i class="tf-icon bx bx-show bx-22px"></i>
                                </button>
                            </a>
                            <a onclick="return confirm ('Apakah anda yakin akan menghapus data ini?')"
                                href="?page=add-order&delete=<?php echo $rowData['id'] ?>">
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
            <span class="me-4"><i class="bx bx-show"></i> = Detail</span>
            <span><i class="bx bx-trash"></i> = Delete</span>
        </div>
    </div>
</div>