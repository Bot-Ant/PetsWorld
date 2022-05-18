<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Carrello</title>
</head>
<body>
	<header>
		<!-- Standard header -->
		<%@include file="/dynamic/header.jsp" %>
	</header>
	<div class="cart-content">
		<div class="cart-panel">
			<div class="cart-box">
				<h1>Carrello</h1>
				<hr>
				<div class="product-line">
					<p>
						Prodotto nel carrello
					</p>
				</div>
			</div>
		</div>
		<div class="price-panel">
			<div class="price-box">
				<div class="single-voice">
					<p>
						Costo dei prodotti
					</p>
					<p>
						€xx.xx
					</p>
				</div>
				<div class="single-voice">
					<p>
						Costo totale
					</p>
					<p>
						€xx.xx
					</p>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<%@include file="/dynamic/footer.jsp" %>
	</footer>
</body>
</html>