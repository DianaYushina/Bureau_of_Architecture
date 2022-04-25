<?php
require_once("templates/top.php");
if (isset($_GET["url"])){
	$url=$_GET["url"];
}
else {
	$url="index";
}
$query="SELECT * FROM main_texts WHERE url='$url'";
$adr = mysqli_query($db_con,$query);
 if(!$adr){
     exit("$query");
 }
 $table=mysqli_fetch_array($adr);
//  print_r($table);
?>
<div class="first-part-about">
	<div class="text-style-p1-about">
		<h1 class="big-text-about"><?=$table["name"]?></h1> 
	</div>
	<div class="button_style_p1-about">
		<a class="button-a-about" id="button-form-about" href="#">Contact us</a>
	</div>
</div>
<?=$table["body"]?>
<?php
require_once("templates/bottom.php");
?>
