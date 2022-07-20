<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ordine</title>
</head>
<body>
	<div id="order-content">	
		<form id="data-panel" method="GET" action = "ServletOrdine" >
			<header>
				<!-- Standard header -->
				<jsp:include page="./formHeader.jsp"/>
			</header>
			<div class="box" id="shipping-info-box">
				<h1>Spedizione</h1>
				<div class="row">
					<div class="field">
						<label for="saved-addresses">Scegli tra i salvati</label>
						<select class="input-field" name="saved-addresses" id="">
							<option value="" selected>Scegli indirizzo</option>

							<option value="option-1">Primo indirizzo</option>

						</select>
					</div>
				</div>
				
				<div class="row">
					<input type="button" id="confirm-shipping" class="active-basic-button" value="Conferma indirizzo" onclick="verifyAddressInfo()">
				</div>
			</div>
			<div id="empty-payment-method" class="box">
				<h1>Pagamento</h1>
			</div>
			<div class="box" id="payment-method-box">
				<h1>Pagamento</h1>
				<div class="row">
					<div class="field">
						<label for="saved-payments">Scegli tra i salvati</label>
						<select class="input-field" name="saved-payments" id="" >
							<option value="" selected>Scegli metodo di pagamento</option>

							<option value="option-1">Primo metodo di pagamento</option>

						</select>
					</div>
				</div>
				
				<div class="row">
					<input type="button" id="confirm-payment" class="active-basic-button" value="Conferma metodo" onclick="verifyPaymentMethodInfo()">
				</div>
			</div>
			<div id="empty-confirm-order" class="box">
				<h1>Conferma ordine</h1>
			</div>
			<div class="box" id="confirm-order-box">
				<h1>Conferma ordine</h1>
				<div class="row">
					<h3>Prezzo totale: €[prezzo totale]</h3>
					<button class="active-accent-button" id="confirm-order">Acquista</button>
				</div>
			</div>
		</form>
		<div id="summary-panel">
			<h1>Sommario</h1>
			<div class="loop">
				<div class="row">
					<img src="./static/images/product-0-pic-0.png" alt="foto prodotto">
					<p>[nome]</p>
					<p>[prezzo]</p>
					<p>[quantità]</p>
				</div>
			</div>
			<div id="total">
				<div class="row">
					<h3>Subtotale</h3>
					<h3 class="price">[subtotale ordine]</h3>
				</div>
				<div class="row">
					<h3>Spedizione</h3>
					<h3 class="price">[costo spedizione]</h3>
				</div>
				<div class="span">
					<div class="row">
						<h2>Totale</h2>
						<h2 class="price">[prezzo totale]</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./static/scripts/order.js"></script>
</body>
</html>