<?php 

// Database configuration 
$dbHost     = "localhost"; 
$dbUsername = "root"; 
$dbPassword = ""; 
$dbName     = "ebalafpv_dev"; 

// Create database connection 
$conn = mysqli_connect($dbHost, $dbUsername, $dbPassword, $dbName);

// Check connection 

if (!$conn) {
    die('Connection Failed' . mysqli_connect_error());
}
