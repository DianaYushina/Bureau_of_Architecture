<?php
require_once("config/config.php");
$query = "INSERT INTO  orders VALUES (NULL,'".$_POST['user_name']."', '".$_POST['email']."', '".$_POST['phone']."', '".$_POST['country']."', '".$_POST['city']."', '".$_POST['address']."', 'CONFIRMED', NULL, '".$_COOKIE['basket']."')";
$adr = mysqli_query($db_con,$query);
if(!$adr){
    exit("$query");
}
if (isset($_COOKIE['basket'])){
    
    setcookie('basket','',time()-1,"/");
}
header("location: /");