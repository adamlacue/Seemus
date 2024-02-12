<?php

include "Content.Class.php";
include "File.Class.php";
include "Mgmt.Class.php";
include "User.Class.php";
include "Utils.Class.php";


  $servername = "twyxt.io";
  $username = "shuser";
  $password = "shRocks!";
  $dbname = "seemus_adam";
  
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Successful connection";
} catch(PDOException $e) {
    echo $e->getMessage();
}


?>