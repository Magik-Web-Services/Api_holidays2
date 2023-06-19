<?php

function deleteHoliday($get)
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

    $sql = "DELETE FROM `api_holidays` WHERE id=$id";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        $data = [
            "status" => 201,
            "message" => "Holiday Deleted Successfully",
        ];
        header("HTTP/1.1 201 Holiday Deleted Successfully");
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
