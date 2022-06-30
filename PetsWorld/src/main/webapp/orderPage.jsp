<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ordine</title>
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./formHeader.jsp"/>
	</header>
	<div id="order-content">
		<form id="data-panel">
			<div id="shipping-info-box">
				<h1>Spedizione</h1>
				<div class="row">
					<label for="indirizzo">Indirizzo</label>
					<input type="text" required name="indirizzo" placeholder="" id="indirizzo">
					<label for="civico">Civico</label>
					<input type="text" required name="civico" placeholder="" id="civico">
				</div>
				<div class="row">
					<label for="citta">Città</label>
					<input type="text" required name="citta" placeholder="" id="citta">
					<label for="CAP">CAP</label>
					<input type="text" required name="CAP" placeholder="" id="CAP">
					<label for="provincia">Provincia</label>
					<input type="text" required name="provincia" placeholder="" id="provincia">
				</div>
				<button>Conferma indirizzo</button>
			</div>
			<div id="payment-method-box">
				<h1>Pagamento</h1>
				<div class="row">
					<label for="nome-proprietario">Nome proprietario</label>
					<input type="text" required name="nome-proprietario" placeholder="" id="nome-proprietario">
				</div>
				<div class="row">
					<label for="numero-carta">Numero</label>
					<input type="text" required name="numero-carta" placeholder="" id="numero-carta">
				</div>
				<div class="row">
					<label for="data-scadenza">Data</label>
					<input type="text" required name="data-scadenza" placeholder="" id="data-scadenza">
					<label for="ccv">CCV</label>
					<input type="text" required name="ccv" placeholder="" id="ccv">
				</div>
				<button>Conferma metodo</button>
			</div>
			<div id="confirm-order-box">
				<h1>Conferma ordine</h1>
				<div class="row">
					<h3>Prezzo totale: €[prezzo totale]</h3>
					<button>Acquista</button>
				</div>
			</div>
		</form>
		<div id="general-report-panel">
			<h1>Sommario</h1>
			<div class="loop">
				<div class="row">
					<img src="" alt="foto prodotto">
					<h2>[nome prodotto]</h2>
					<h2>[prezzo prodotto]</h2>
					<h2>[quantità]</h2>
				</div>
			</div>
			<div class="row">
				<h3>Subtotale</h3>
				<h2>[subtotale ordine]</h2>
			</div>
			<div class="row">
				<h3>Spedizione</h3>
				<h2>[costo spedizione]</h2>
			</div>
			<div class="span">
				<div class="row">
					<h3>Totale</h3>
					<h2>[prezzo totale]</h2>
				</div>
			</div>
		</div>
	</div>
</body>
</html>