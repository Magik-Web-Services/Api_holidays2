<?php
// Specify which request methods are allowed
header('Access-Control-Allow-Methods: PUT');

$inputData = json_decode(file_get_contents("php://input"), true);
if (empty($inputData)) {
    updateHoliday($_POST, $_GET);
} else {
    updateHoliday($inputData, $_GET);
}
