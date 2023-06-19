<?php

function updateHoliday($Holiday, $get)
{

    global $conn;

    if (!isset($get['id'])) {
        $data = [
            "status" => 422,
            "message" => "Holiday id is not found in url",
        ];
        header("HTTP/1.1 422 Holiday id is not found in url");
        echo json_encode($data);
        exit();
    } elseif ($get['id'] == null) {
        $data = [
            "status" => 422,
            "message" => "Plz Enter ID",
        ];
        header("HTTP/1.1 422 Plz Enter ID");
        echo json_encode($data);
        exit();
    }

    $id = $get['id'];


    $name = mysqli_real_escape_string($conn, $Holiday['name']);
    $country = mysqli_real_escape_string($conn, $Holiday['country']);
    $location = mysqli_real_escape_string($conn, $Holiday['location']);
    $date = mysqli_real_escape_string($conn, $Holiday['date']);
    $date_year = mysqli_real_escape_string($conn, $Holiday['date_year']);
    $date_month = mysqli_real_escape_string($conn, $Holiday['date_month']);
    $date_day = mysqli_real_escape_string($conn, $Holiday['date_day']);
    $week_day = mysqli_real_escape_string($conn, $Holiday['week_day']);

    if (empty(trim($name)) || empty(trim($country)) || empty(trim($location)) || empty(trim($date)) || empty(trim($date_year)) || empty(trim($date_month)) || empty(trim($date_day)) || empty(trim($week_day))) {
        $data = [
            "status" => 422,
            "message" => "Plz Fill Fields",
        ];
        header("HTTP/1.1 422 Plz Fill Fields");
        echo json_encode($data);
        exit();
    } else {
        $sql = "UPDATE `api_holidays` SET `name`='$name',`country`='$country',`location`='$location',`date`='$date',`date_year`='$date_year',`date_month`='$date_month',`date_day`='$date_day',`week_day`='$week_day' WHERE id=$id";
        $result = mysqli_query($conn, $sql);

        if ($result) {
            $data = [
                "status" => 201,
                "message" => "Holiday Created Successfully",
            ];
            header("HTTP/1.1 201 Holiday Created Successfully");
            echo json_encode($data);
        } else {
            $data = [
                "status" => 500,
                "message" => "Internal Server Error",
            ];
            header("HTTP/1.1 500 Internal Server Error");
            echo json_encode($data);
        }
    }
}
