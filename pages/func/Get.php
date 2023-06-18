<?php
function getHolidayList()
{
    global $conn;

    $query = "SELECT * FROM api_holidays";
    $query_run = mysqli_query($conn, $query);

    if ($query_run) {
        if (mysqli_num_rows($query_run) > 0) {
            $res = mysqli_fetch_all($query_run, MYSQLI_ASSOC);
            $data = [
                "status" => 200,
                "message" => "Holidays List Found",
                "data" => $res,

            ];
            header("HTTP/1.1 200 Holidays List Found");
            echo json_encode($data);
        } else {
            $data = [
                "status" => 404,
                "message" => "No Holidays Found",
            ];
            header("HTTP/1.1 404 No Holidays Found");
            echo json_encode($data);
        }
    } else {
        $data = [
            "status" => 500,
            "message" => "Internal Server Error",
        ];
        header("HTTP/1.1 500 Internal Server Error");
        echo json_encode($data);
    }
}


function getHoliday($params)
{
    global $conn;

    if (empty($params['month']) && empty($params['day']) && empty($params['country'])) {
        $data = [
            "status" => 422,
            "message" => "Plz Fill Fields",
        ];
        header("HTTP/1.1 422 Plz Fill Fields");
        echo json_encode($data);
    } else {

        $month = mysqli_real_escape_string($conn, $params["month"]);
        $day = mysqli_real_escape_string($conn, $params["day"]);
        $country = mysqli_real_escape_string($conn, $params["country"]);

        if ($params["month"]) {
            $query = "SELECT * FROM api_holidays WHERE date_month=$month";
        } 
        elseif($params["day"]) {
            $query = "SELECT * FROM api_holidays WHERE date_day=$day";
        }
        elseif($params["country"]) {
            $query = "SELECT * FROM api_holidays WHERE country='$country'";
        }else{
            $query = "SELECT * FROM api_holidays";
        }

        $result = mysqli_query($conn, $query);

        if ($result) {
            if (mysqli_num_rows($result) > 0) {
                $res = mysqli_fetch_all($result, MYSQLI_ASSOC);
                $data = [
                    "status" => 200,
                    "message" => "Holidays Fech Successfully",
                    "Data" => $res,
                ];
                header("HTTP/1.1 200 Ok");
                echo json_encode($data);
            } else {
                $data = [
                    "status" => 404,
                    "message" => "Holidays Not Found",
                ];
                header("HTTP/1.1 404 Holidays Not Found");
                echo json_encode($data);
            }
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
