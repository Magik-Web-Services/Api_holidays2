<?php
error_reporting(0);
// Additional headers which may be sent along with the CORS request
header('Access-Control-Allow-Headers: X-Requested-With,Authorization,Content-Type');
// Specify domains from which requests are allowed
header('Access-Control-Allow-Origin: *');
// header("Content-Type: text/html");
header('Content-Type: application/json');
// includes
include("pages/database/dbconnection.php");

// get REQUEST_METHOD
$requestMethod = $_SERVER["REQUEST_METHOD"];

// if REQUEST_METHOD GET
if ($requestMethod == "GET") {
    include("pages/func/Get.php");
    include('pages/Holidays/read.php');
}

// if REQUEST_METHOD POST
if ($requestMethod == "POST") {
    include("pages/func/POST.php");
    include('pages/Holidays/create.php');
}

// if REQUEST_METHOD PUT
if ($requestMethod == "PUT") {
    include("pages/func/PUT.php");
    include('pages/Holidays/update.php');
}

// if REQUEST_METHOD DELETE
if ($requestMethod == "DELETE") {
    include("pages/func/DELETE.php");
    include('pages/Holidays/Delete.php');
}
