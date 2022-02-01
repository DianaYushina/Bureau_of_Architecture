<?php
 require_once("config/config.php");
 $query = "INSERT INTO  user_infos VALUES (NULL,'".$_POST['name']."', '".$_POST['city']."', '".$_POST['phone']."', '".$_POST['email']."', '".$_POST['messenger']."' )";
 $adr = mysqli_query($db_con,$query);
 if(!$adr){
     exit("$query");
 }
 header("location: /");

