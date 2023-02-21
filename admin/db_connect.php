<?php 
$username = doadmin;
$password = AVNS_c5AduIX-PkkeiPNMrcx;
$host = ajewellery-do-user-12863890-0.b.db.ondigitalocean.com;
$port = 25060;
$database = defaultdb;
$sslmode = REQUIRED;
$conn= new mysqli('$host','$username','$password','$database')or die("Could not connect to mysql".mysqli_error($con));
