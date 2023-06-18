<?php
// Specify which request methods are allowed
header('Access-Control-Allow-Methods: POST');

// get REQUEST_METHOD
$requestMethod = $_SERVER["REQUEST_METHOD"];

// if REQUEST_METHOD POST
$inputData = json_decode(file_get_contents("php://input"), true);
if (empty($inputData)) {
    storeHoliday($_POST);
} else {
    storeHoliday($inputData);
}
