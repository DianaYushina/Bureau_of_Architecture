<?php
require_once("templates/top.php");
// print_r($_COOKIE["basket"]);

if(isset ($_COOKIE["basket"])){
	$arr=explode(",",$_COOKIE["basket"]);
	// print_r($arr);
?>

	<form action="basket_recount.php" method="POST">
	<table class="style-border-table" width="100%" class="table table-bordered" > 
		<tr class="border-table">
			<th class="heading_basket_form" width="120px">PICTURE</th>
			<th class="heading_basket_form">NAME OF PRODUCT</th>
			<th class="heading_basket_form">PRICE, $</th>
			<th class="heading_basket_form">COUNT</th>
			<th class="heading_basket_form">SUM</th>
			<th class="heading_basket_form">DELETE</th>
		</tr>
	<?php
	$itogo=0;
	foreach($arr as $one){
		$product_arr=explode(":",$one);
		if($product_arr[2]){
			// echo $product_arr[0];
			$query="SELECT * FROM products WHERE id=".$product_arr[0];
			$adr = mysqli_query($db_con,$query);
 		if(!$adr){
     	exit("$query");
 		}
 $product=mysqli_fetch_array($adr);
//  echo $product["name"];
?>
	<tr class="border-table">
			<td> <img width="100%" height="150px" class="ph-p2-products" src="media/img/<?php echo $product["picture"];?>"></td>
			<td class="row2-style-table"><?php echo $product["name"];?></td>
			<td class="row2-style-table"><?php echo $product["price"];?></td>
			<td class="row2-style-table"><input class="input_style" type="number" min="1" name="<?php echo $product["id"];?>" value="<?php echo $product_arr[1];?>"></td>
			<td class="row2-style-table"><?php $summa=$product["price"]*$product_arr[1];
			echo $summa;
			$itogo+=$summa;
			?></td>
			<td class="row2-style-table"><a class="a-basket_delete" href="/basket_clean.php?id=<?=$product["id"];?>">delete</a></td>
		</tr>
<?php
			echo "<br/>";
		}
	}
	?>
	<tr class="border-table">
			<td class="total_price" colspan=2>TOTAL: </td>
			<td><?php echo "<div class='itogo'>".$itogo."</div>";?></td>
			<td><input class="input_buttom" type="submit" value="recount"></td>
			<td class="row2-style-table"><input type="button" value="delete" onclick="deleteTableFunction()"></td>
		</tr>
	</table>
</form>
	<?php
	
}

?>
<!-- форма  -->
<form class="form-style-basket" action="send_order.php" method="post">
	<div class="form-text">ENTER YOUR USER NAME</div>
	<input class="intut-stale_text_form" type="text" name="user_name" placeholder="name">
	<div class="form-text">ENTER YOUR EMAIL</div>
	<input class="intut-stale_text_form" type="email" name="email" placeholder="email">
	<div class="form-text">ENTER YOUR PHONE</div>
	<input class="intut-stale_text_form" type="phone" name="phone" placeholder="phone">
	<div class="form-text">ENTER YOUR DELIVERY COUNTRY</div>
	<input class="intut-stale_text_form" type="text" name="country" placeholder="country">
	<div class="form-text">ENTER YOUR DELIVERY CITY</div>
	<input class="intut-stale_text_form" type="text" name="city" placeholder="city">
	<div class="form-text">ENTER YOUR DELIVERY ADDRESS</div>
	<input class="intut-stale_text_form" type="text" name="address" placeholder="address">
	<div class="button-style-bascet-form">
  		<button class="reset-form-basket" type="reset" value="Reset">RESET</button>
        <button class="submit-form-basket" type="submit" value="Submit">SUBMIT</button>
  	</div>
</form>

<?php
require_once("templates/bottom.php");
?>
