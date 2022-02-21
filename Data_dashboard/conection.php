<?php

$con = mysqli_connect("localhost","root","") or die("Problemes a login de bd");
mysqli_set_charset($con, "utf8") or die("Problemes amb el cotejamiento de caracteres");
$db = mysqli_select_db($con, "trade_data") or die("Problemes a bd");

?>