<?php
// Specify which request methods are allowed
header('Access-Control-Allow-Methods: POST');

// if REQUEST_METHOD POST
$inputData = json_decode(file_get_contents("php://input"), true);
if (empty($inputData)) {
    echo storeHoliday($_POST);
} else {
    echo storeHoliday($inputData);
}
