<?php
require_once("config/config.php");
// print_r($_POST);
$basket="";
foreach($_POST as $key => $value){
    // echo $key; 
    $query="SELECT * FROM products WHERE id=".$key;
			$adr = mysqli_query($db_con,$query);
 		if(!$adr){
     	exit("$query");
 		}
 $product=mysqli_fetch_array($adr);
//  echo $product["price"];
$basket.=$key.":".$value.":".$product["price"].",";
}
// echo $_COOKIE["basket"];
// echo "<br/>";
// echo $basket;
setcookie("basket",$basket,time()+3600*24,"/");
header("location: basket.php");

