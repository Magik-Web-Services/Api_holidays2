<?php
//  Connect PHP to MySQL Database
include('database/dbconnection.php');

// Read the JSON file in PHP
// $jsondata = file_get_contents('jsons/dataCa.json');
// $jsondata = file_get_contents('jsons/dataIN.json');

// Convert JSON String into PHP Array
$data = json_decode($jsondata, JSON_OBJECT_AS_ARRAY);

foreach ($data as $row) {
    // Extract the Array Values
    $name = $row['name'];
    $country = $row['country'];
    $location = $row['location'];
    $date = $row['date'];
    $date_year = $row['date_year'];
    $date_month = $row['date_month'];
    $date_day = $row['date_day'];
    $week_day = $row['week_day'];

    //insert into mysql table
    $sql = "INSERT INTO api_holidays (name, country, location, date, date_year, date_month, date_day, week_day)VALUES('$name', '$country', '$location', '$date', '$date_year', '$date_month', '$date_day', '$week_day')";
    mysqli_query($conn, $sql);
}
