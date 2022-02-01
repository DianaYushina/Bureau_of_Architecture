<?php
require_once("config/config.php");
$query = "INSERT INTO  main_texts VALUES (NULL,'".$_POST['name']."', '".$_POST['language']."', '".$_POST['body']."', '".$_POST['file']."', '".$_POST['url']."', '".$_POST['date']."' )";
$adr = mysqli_query($db_con,$query);
if(!$adr){
    exit("$query");
}
header("location: /");