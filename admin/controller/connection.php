<?php

$connection = mysqli_connect("localhost", "root", "", "angkatan3_ujikom");

if (!$connection) {
    echo "Unable to connect";
    die;
}
