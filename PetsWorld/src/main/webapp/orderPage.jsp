<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ordine</title>
</head>
<body>
	
	<div id="order-content">
		
		<form id="data-panel">
			<header>
				<!-- Standard header -->
				<jsp:include page="./formHeader.jsp"/>
			</header>
			<div class="data-box" id="shipping-info-box">
				<h1>Spedizione</h1>
				<div class="row">
					<div class="field">
						<label for="saved-addresses">Scegli tra i salvati</label>
						<select name="saved-addresses" id="" >
							<option value="" selected>Nuovo indirizzo</option>
							<option value="option-1">Primo indirizzo</option>
							<option value="option-2">Secondo indirizzo</option>
							<option value="option-3">Terzo indirizzo</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="indirizzo">Indirizzo</label>
						<input type="text" required name="indirizzo" placeholder="" id="indirizzo">
					</div>
					<div class="field">
						<label for="civico">Civico</label>
						<input type="text" required name="civico" placeholder="" id="civico">
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="citta">Città</label>
						<input type="text" required name="citta" placeholder="" id="citta">
					</div>
					<div class="field">
						<label for="CAP">CAP</label>
						<input type="text" required name="CAP" placeholder="" id="CAP">
					</div>
					<div class="field">
						<label for="provincia">Provincia</label>
						<input type="text" required name="provincia" placeholder="" id="provincia">
					</div>
				</div>
				<div class="row">
					<div class="save-data">
						<p>Salva indirizzo</p>
						<input type="checkbox" name="" id="">
					</div>
					<button class="confirm-active" id="confirm-shipping">Conferma indirizzo</button>
				</div>
			</div>
			<div class="data-box" id="payment-method-box">
				<h1>Pagamento</h1>
				<div class="row">
					<div class="field">
						<label for="saved-payments">Scegli tra i salvati</label>
						<select name="saved-payments" id="" >
							<option value="" selected>Nuovo metodo di pagamento</option>
							<option value="option-1">Primo metodo di pagamento</option>
							<option value="option-2">Secondo metodo di pagamento</option>
							<option value="option-3">Terzo metodo di pagamento</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="nome-proprietario">Nome proprietario</label>
						<input type="text" required name="nome-proprietario" placeholder="" id="nome-proprietario">
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="numero-carta">Numero</label>
						<input type="text" required name="numero-carta" placeholder="" id="numero-carta">
					</div>
				</div>
				<div class="row">
					<div class="field">
						<label for="data-scadenza">Data</label>
						<input type="text" required name="data-scadenza" placeholder="" id="data-scadenza">
					</div>
					<div class="field">
						<label for="ccv">CCV</label>
						<input type="text" required name="ccv" placeholder="" id="ccv">
					</div>
				</div>
				<div class="row">
					<div class="save-data">
						<p>Salva metodo di pagamento</p>
						<input type="checkbox" name="" id="">
					</div>
					<button class="confirm-inactive" id="confirm-payment">Conferma metodo</button>
				</div>
			</div>
			<div class="data-box" id="confirm-order-box">
				<h1>Conferma ordine</h1>
				<div class="row">
					<h3>Prezzo totale: €[prezzo totale]</h3>
					<button class="confirm-active" id="confirm-order">Acquista</button>
				</div>
			</div>
		</form>
		<div id="summary-panel">
			<h1>Sommario</h1>
			<div class="loop">
				<div class="row">
					<img src="" alt="foto prodotto">
					<p>[nome]</p>
					<p>[prezzo]</p>
					<p>[quantità]</p>
				</div>
			</div>
			<div class="row">
				<h3>Subtotale</h3>
				<h3>[subtotale ordine]</h3>
			</div>
			<div class="row">
				<h3>Spedizione</h3>
				<h3>[costo spedizione]</h3>
			</div>
			<div class="span">
				<div class="row">
					<h2>Totale</h2>
					<h2>[prezzo totale]</h2>
				</div>
			</div>
		</div>
	</div>
</body>
</html>