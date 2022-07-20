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
			<div id="addresses-box" class="user-list box">
				<!-- if there is no saved address -->
				<div id="no-user-elements" class="row" style="display: none;">
					<h2 class="message">Non hai indirizzi salvati</h2>
					<input type="button" class="active-basic-button" value="Aggiungi indirizzo" onclick="activateNewUserElementForm()">
				</div>
				<hr id="top-separator" class="not-displayed">
				<!-- if there is at least one saved address -->
				<div id="add-address" class="row">
					<input type="button" class="active-basic-button" value="Aggiungi indirizzo" onclick="activateNewUserElementForm()">
				</div>
				<hr id="top-separator">
				<div class="loop">
					<div id="user-element-[id]" class="user-element-line row">
							<div class="user-element-data">
								<div class="row">
									<div class="column">
										<input type="text" id="address-name-[id]" class="input-field inactive user-element-name" name="address-name" value="Nome_strada" required>
										<p id="address-name-[id]-validity" class="invalid"></p>
									</div>
									<div class="column">
										<input type="text" id="address-number-[id]" class="input-field inactive user-element-name number" name="address-number" value="Civico"required>
										<p id="address-number-[id]-validity" class="invalid"></p>
									</div>
								</div>
								<div class="row">
									<div class="column">
										<input type="text" id="address-city-[id]" class="input-field inactive" name="citta" value="Città" required>
										<p id="address-city-[id]-validity" class="invalid"></p>
									</div>
									<div class="column">
										<input type="text" id="address-province-[id]" class="input-field inactive" name="provincia" value="Provincia" required>
										<p id="address-province-[id]-validity" class="invalid"></p>
									</div>
								</div>
								<div class="column">
									<input type="text" id="address-cap-[id]" class="input-field inactive number" name="cap" value="CAP" required>
									<p id="address-cap-[id]-validity" class="invalid"></p>
								</div>
							</div>
							<div id="user-element-[id]-buttons" class="user-element-buttons column">
								<input type="button" id="user-element-[id]-edit-button" class="active-edit-button" value="Modifica" onclick="editUserAddress('[id]')">
							</div>	
					</div>
				</div>
				<!-- always in the page -->
				<div id="new-user-element" class="user-element-line row not-displayed">
					<div class="user-element-data">
						<div class="row">
							<h2 class="new-element-title">Nuovo indirizzo</h2>
						</div>
						<div class="row">
							<div class="column">
								<input type="text" id="address-name-new" class="input-field user-element-name" name="address-name" placeholder="Nome della strada" required>
								<p id="address-name-new-validity" class="invalid"></p>
							</div>
							<div class="column">
								<input type="text" id="address-number-new" class="input-field user-element-name number" name="address-number" placeholder="Civico" required>
								<p id="address-number-new-validity" class="invalid"></p>
							</div>
						</div>
						<div class="row">
							<div class="column">
								<input type="text" id="address-city-new" class="input-field" name="citta" placeholder="Città" required>
								<p id="address-city-new-validity" class="invalid"></p>
							</div>
							<div class="column">
								<input type="text" id="address-province-new" class="input-field" name="provincia" placeholder="Provincia" required>
								<p id="address-province-new-validity" class="invalid"></p>
							</div>
						</div>
						<div class="column">
							<input type="text" id="address-cap-new" class="input-field number" name="cap" placeholder="CAP" required>
							<p id="address-cap-new-validity" class="invalid"></p>
						</div>
					</div>
					<input type="button" id="save-new-user-element" class="active-save-button" value="Salva" onclick="submitNewAddress('new')">
				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
	<script type="text/javascript" src="./static/scripts/regex.js"></script>
	<script type="text/javascript" src="./static/scripts/user.js"></script>
	<script>
		setUserSectionActive("user-addresses");
	</script>
</body>
</html>