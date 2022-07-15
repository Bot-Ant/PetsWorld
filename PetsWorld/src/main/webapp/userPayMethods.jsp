<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Metodi di pagamento</title>
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div id="user-content">
		<jsp:include page="./static/templates/userNav.html"/>
		<div id="data-panel">
			<div id="user-page-header">
				<h1>Metodi di pagamento</h1>
				<p>
					Questi sono tutti i metodi di pagamento che hai salvato.
				</p>
			</div>
			<div id="pay-methods-box" class="box">
				<!-- if there is no saved payment method -->
				<div id="no-pay-method" class="row" style="display: none;">
					<h2 class="message">Non hai metodi di pagamento salvati</h2>
					<input type="button" class="active-basic-button" value="Aggiungi metodo di pagamento" onclick="activateNewPayMethodForm()">
				</div>
				<hr id="top-separator" class="not-displayed">
				<!-- if there is at least one saved payment method -->
				<div id="add-pay-method" class="row">
					<input type="button" class="active-basic-button" value="Aggiungi metodo di pagamento" onclick="activateNewPayMethodForm()">
				</div>
				<hr id="top-separator">
				<div class="loop">
					<div id="pay-method-[id]" class="pay-method-line row">
						<div class="pay-method-data">
							<div class="row">
								<input type="text" id="pay-method-number-[id]" class="input-field inactive pay-method-number name" name="pay-method-number" value="Numero_carta" required>
							</div>
							<div class="row">
								<input type="text" id="owner-[id]" class="input-field inactive" name="proprietario" value="Proprietario" required>
							</div>
							<div class="row">
								<input type="text" id="month-[id]" class="input-field inactive number" name="mese" value="Mese" required>
								<input type="text" id="year-[id]" class="input-field inactive number" name="anno" value="Anno" required>
							</div>
						</div>
						<div id="pay-method-[id]-buttons" class="pay-method-buttons column">
							<input type="button" id="pay-method-[id]-edit-button" class="active-edit-button" value="Modifica" onclick="editUserPayMethod('[id]')">
						</div>	
					</div>
				</div>
				<!-- always in the page -->
				<div id="new-pay-method" class="pay-method-line row not-displayed">
					<div class="pay-method-data">
						<div class="row">
							<h2>Nuovo metodo di pagamento</h2>
						</div>
						<div class="row">
							<input type="text" id="new-pay-method-number" class="input-field pay-method-number name" name="pay-method-number" placeholder="Numero della carta" required>
						</div>
						<div class="row">
							<input type="text" id="new-proprietario" class="input-field" name="proprietario" placeholder="Proprietario" required>
						</div>
						<div class="row">
							<input type="text" id="new-month" class="input-field number" name="mese" placeholder="Mese" required>
							<input type="text" id="new-year" class="input-field number" name="anno" placeholder="Anno" required>
						</div>
					</div>
					<button id="save-new-pay-method" class="active-save-button">Salva</button>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
	<script type="text/javascript" src="./static/scripts/page.js"></script>
	<script type="text/javascript" src="./static/scripts/user.js"></script>
	<script>
		setUserSectionActive("user-payments");
	</script>
</body>
</html>