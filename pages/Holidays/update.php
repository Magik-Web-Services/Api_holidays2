<?php
// Specify which request methods are allowed
header('Access-Control-Allow-Methods: PUT');

// includes
include("../func/POST.php");

// get REQUEST_METHOD
$requestMethod = $_SERVER["REQUEST_METHOD"];

// if REQUEST_METHOD POST
if ($requestMethod == "PUT") {

    $inputData = json_decode(file_get_contents("php://input"), true);
    if (empty($inputData)) {
        updateHoliday($_POST, $_GET);
    } else {
        updateHoliday($inputData, $_GET);
    }
} else {
    $data = [

        "status" => 405,
        "message" => $requestMethod . " Method Not Allowed",
    ];
    header("HTTP/1.1 405 Method Not Allowed");
    echo json_encode($data);
}
