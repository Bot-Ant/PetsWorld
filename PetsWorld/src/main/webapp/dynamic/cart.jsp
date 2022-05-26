<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Carrello</title>
	<link rel="stylesheet" href="static/styles/order.css">
</head>
<body>
	<header>
		<!-- Standard header -->
		<%@include file="/dynamic/header.jsp" %>
	</header>
	<div class="cart-content">
		<div id="empty">
			<h1>Il carrello è vuoto</h1>
			<p>
				Aggiungi prodotti al carrello per visualizzarli in questa sezione.
			</p>
		</div>
		<div id="full">
			<div class="cart-panel">
				<div class="cart-box">
					<h1>Carrello</h1>
					<div class="product-line">
						<img src="static/images/cucciaPerCani.jpg" alt="Immagine prodotto">
						<div class="product-name">
							<h2>Nome del prodotto</h2>
							<p>
								Prodotto nel carrello
							</p>
						</div>
						<div class="product-values">
							<form class="product-modifiers">
								<button>Del</button>
								<div class="product-quantities">
									<button class="left">-</button>
									<input type="text">
									<button class="right">+</button>
								</div>
							</form>
							<h3 class="product-price">€24.99</h3>
						</div>
					</div>
					<hr>
					<div class="product-line">
						<img src="static/images/cucciaPerCani.jpg" alt="Immagine prodotto">
						<div class="product-name">
							<h2>Nome del prodotto</h2>
							<p>
								Prodotto nel carrello
							</p>
						</div>
						<div class="product-values">
							<form class="product-modifiers">
								<button>Del</button>
								<div class="product-quantities">
									<button class="left">-</button>
									<input type="text">
									<button class="right">+</button>
								</div>
							</form>
							<h3 class="product-price">€24.99</h3>
						</div>
					</div>
					<hr>
					<div class="product-line">
						<img src="static/images/cucciaPerCani.jpg" alt="Immagine prodotto">
						<div class="product-name">
							<h2>Nome del prodotto</h2>
							<p>
								Prodotto nel carrello
							</p>
						</div>
						<div class="product-values">
							<form class="product-modifiers">
								<button>Del</button>
								<div class="product-quantities">
									<button class="left">-</button>
									<input type="text">
									<button class="right">+</button>
								</div>
							</form>
							<h3 class="product-price">€24.99</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="price-panel">
				<div class="price-box">
					<h1>Totale</h1>
					<div class="single-voice">
						<p>
							Subtotale
						</p>
						<p class="price">
							€xx.xx
						</p>
					</div>
					<div class="single-voice">
						<p>
							Spese di spedizione
						</p>
						<p class="price">
							€xx.xx
						</p>
					</div>
					<span>
						<div class="single-voice">
							<p>
								Costo totale 
								<br>
								<span class="small">(iva inclusa)</span>
							</p>
							<p class="price">
								€xx.xx
							</p>
						</div>
					</span>
					<form action="">
						<button>Procedi all'ordine</button>
					</form>
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