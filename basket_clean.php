<?php
require_once("config/config.php");
$arr=explode(",",$_COOKIE["basket"]);
$new_arr=[];
foreach($arr as $one){
    $product_arr=explode(":",$one);
    $id=(int)$product_arr[0];
    if($id>0){
        if($product_arr[0]!=$_GET["id"]){
        $query="SELECT * FROM products WHERE id=".$product_arr[0];
			$adr = mysqli_query($db_con,$query);
 		if(!$adr){
     	    exit("$query");
 		}
        $product=mysqli_fetch_array($adr);
        $new_arr[]=$product_arr[0].":"."1".":".$product["price"];
        }
    }
}
//  print_r($new_arr);
$new_basket=implode(",",$new_arr);
setcookie("basket",$new_basket,time()+3600*24,"/");
header("location: basket.php");
// echo $new_basket;
// echo $_COOKIE["basket"];
