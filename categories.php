<?php
require_once("templates/top.php");

$query="SELECT * FROM categories";
$adr = mysqli_query($db_con,$query);
 if(!$adr){
     exit("$query");
 }
 
// print_r($table);
// exit;
?>
<div class="first-part-about">
    <div class="text-style-p1-about">
        <h1 class="big-text-about">Categories</h1> 
    </div>
    <div class="button_style_p1-about">
        <a class="button-a-about" id="button-form-about" href="#">Contact us</a>
    </div>
</div>
<?php 
while($table=mysqli_fetch_array($adr)){
?>
<h2><?php echo $table["name"];?></h2>
<?php 
$query1="SELECT * FROM products WHERE category_id=".$table["id"];
$adr1 = mysqli_query($db_con,$query1);
 if(!$adr1){
     exit("$query1");
 }
?>
<div class="bord-p2-product-main1">
    <div class="photo-style-p2-produsts">
<?php
 while($table1=mysqli_fetch_array($adr1)){
?>
    <div class="s-f_p2_products">
        <img class="ph-p2-products" src="media/img/<?php echo $table1["picture"];?>">
        <a class="addCart" id="good-<?php echo $table1["id"] ?>-<?php echo $table1["price"] ?>" href="#"><img class="pos-product-order" src="media/img/123.png" width="40px"></a>
        <div>
            <div class="t-product-p"><?php echo $table1["name"];?></div>
            <div class="price_product">$<?php echo $table1["price"];?></div>
            <div class="text-product-p"><?php echo $table1["description_small"];?></div>
            <div>
                <!-- <div class="stars-<?php echo $table1["stars"];?>"></div> -->
                <div class="material-icons">
                    <?php  
                        echo str_repeat("star ", $table1["stars"]);
                    ?>
                </div>
            </div>
        </div>
    </div>
<?php
 }
?>
</div>
</div>
<?php 
} 
require_once("templates/bottom.php");
?>