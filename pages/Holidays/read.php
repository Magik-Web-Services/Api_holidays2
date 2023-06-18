<?php
// Specify which request methods are allowed
header('Access-Control-Allow-Methods: GET');

// includes

// get REQUEST_METHOD
$requestMethod = $_SERVER["REQUEST_METHOD"];

// if REQUEST_METHOD GET
if (isset($_GET['month']) || empty($_GET['day']) || empty($_GET['country'])) {
    getHoliday($_GET);
} else {
    getHolidayList();
}
