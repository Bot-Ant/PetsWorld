<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Indirizzi</title>
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
				<h1>Indirizzi</h1>
				<p>
					Questi sono tutti gli indirizzi che hai salvato.
				</p>
			</div>
			<div id="addresses-box" class="box">
				<!-- if there is no saved address -->
				<div id="no-addresses" class="row" style="display: none;">
					<h2 class="message">Non hai indirizzi salvati</h2>
					<input type="button" class="active-basic-button" value="Aggiungi indirizzo" onclick="activateNewAddressForm()">
				</div>
				<hr id="top-separator" class="not-displayed">
				<!-- if there is at least one saved address -->
				<div id="add-address" class="row">
					<input type="button" class="active-basic-button" value="Aggiungi indirizzo" onclick="activateNewAddressForm()">
				</div>
				<hr id="top-separator">
				<div class="loop">
					<div id="address-[id]" class="address-line row">
							<div class="address-data">
								<div class="row">
									<input type="text" id="address-name-[id]" class="input-field inactive address-name name" name="address-name" value="Nome_strada" required>
									<input type="text" id="address-number-[id]" class="input-field inactive address-name number" name="address-number" value="Civico"required>
								</div>
								<div class="row">
									<input type="text" id="citta-[id]" class="input-field inactive" name="citta" value="Città" required>
									<input type="text" id="provincia-[id]" class="input-field inactive" name="provincia" value="Provincia" required>
								</div>
								<input type="text" id="cap-[id]" class="input-field inactive number" name="cap" value="CAP" required>
							</div>
							<div id="address-[id]-buttons" class="address-buttons column">
								<input type="button" id="address-[id]-edit-button" class="active-edit-button" value="Modifica" onclick="editUserAddress('[id]')">
							</div>	
					</div>
				</div>
				<!-- always in the page -->
				<div id="new-address" class="address-line row not-displayed">
					<div class="address-data">
						<div class="row">
							<h2>Nuovo indirizzo</h2>
						</div>
						<div class="row">
							<input type="text" id="new-address-name" class="input-field address-name name" name="address-name" placeholder="Nome della strada" required>
							<input type="text" id="new-address-number" class="input-field address-name number" name="address-number" placeholder="Civico" required>
						</div>
						<div class="row">
							<input type="text" id="new-citta" class="input-field" name="citta" placeholder="Città" required>
							<input type="text" id="new-provincia" class="input-field" name="provincia" placeholder="Provincia" required>
						</div>
						<input type="text" id="new-cap" class="input-field number" name="cap" placeholder="CAP" required>
					</div>
					<button id="save-new-address" class="active-save-button">Salva</button>
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
		setUserSectionActive("user-addresses");
	</script>
</body>
</html>