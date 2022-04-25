<?php
require_once("config/config.php");
?>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="media/css/style.css" >
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
	  	<link href="media/fonts/css/font-awesome.css" rel="stylesheet">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Cardo:ital@0;1&family=Roboto&display=swap" rel="stylesheet">
		
	</head>
	<body>
		<header>
				<div class="style_h1_nav">
					<h1 class="logo"><a class="menu-a" href="/static.php?url=contact">DY</a></h1>
					<nav>
						<ul>
							<li><a class="menu-a" href="/">Home</a></li>
							<li><a class="menu-a" href="/static.php?url=about">About</a></li>
							<!-- <li><a class="menu-a" href="#">Services</a></li> -->
							<li><a class="menu-a" href="/static.php?url=products">Products</a></li>
							<li><a class="menu-a" href="/categories.php">Categories</a></li>
							<li><a class="menu-a" href="/static.php?url=contact">Contact</a></li>
							<li><a class="menu-a" href="/static.php?url=news">News</a></li>
						</ul>
					</nav>
				</div>
		</header>

		<div class="basket">
           <a class="basket-color" href="#"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></a>
		   <div id="basket">
            <table id="bascets">
                <tbody>
                <tr style="display: none;" class="hPb">
                    <td class="selected">SELECTED:</td>
                    <td class="cout_of_product"><span id="totalGoods">0</span>PRODUCT</td>
				</tr>
				<tr style="display: none;" class="hPb">
                	<td class="total">TOTAL: &asymp; </td>
                    <td class="total"><span id="totalPrice">0</span>$</td>
                </tr>
                <tr style="display: table-row;" class="hPe">
                    <td class="cart_is_empty" colspan="2">CART IS EMPTY</td>
                </tr>
                <tr>
                    <td class="button-cancel"><a class="button-cancel" style="display: none;" id="clearBasket" href="#">CANCEL</a></td>
                    <td class="button-buy"><a class="button-buy" style="display: none;" id="checkOut" href="/basket.php">BUY</a></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
		