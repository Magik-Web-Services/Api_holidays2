<?php
// Specify which request methods are allowed
header('Access-Control-Allow-Methods: GET');

// include('../func/Get.php');
// include('../database/dbconnection.php');

// if REQUEST_METHOD GET

$response = (isset($_GET) && !empty($_GET)) ? $_GET : '' ;


if (!empty($_GET['month']) || !empty($_GET['day']) || !empty($_GET['country'])  || !empty($_GET['year'])) {
    echo getHoliday($_GET);
} else {
    // echo getHolidayList();
    echo getHoliday($response);
}
