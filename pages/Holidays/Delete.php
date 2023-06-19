<?php
// Specify which request methods are allowed
header('Access-Control-Allow-Methods: DELETE');

deleteHoliday($_GET);
