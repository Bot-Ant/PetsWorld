<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Dati personali</title>
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
				<h1>Dati personali</h1>
				<p>
					Questi sono i tuoi dati personali.
				</p>
			</div>
			<div id="data-box" class="box">
				<div id="user-info" class="column">
					<div id="user-info-top" class="row">
						<h2 class="section-name">Dati</h2>
						<input type="button" id="user-info-edit-button" class="active-edit-button" value="Modifica" onclick="editUserData('user-info-edit-button','user-info-top')">
					</div>
					<div class="row">
						<div class="element-left">
							<label class="field-name" for="nome"><b>Nome</b></label><br>
							<input type="text" id="nome" class="input-field inactive" name="nome" value="Nome_utente">
						</div>
						<div class="element-right">
							<label class="field-name" for="cognome"><b>Cognome</b></label><br>
							<input type="text" id="cognome" class="input-field inactive" name="cognome" value="Cognome_utente">
						</div>			
					</div>
					<div class="row">
						<div class="element-left">
							<label class="field-name" for="codiceFiscale"><b>Codice Fiscale</b></label><br>
							<input type="text" id="codiceFiscale" class="input-field inactive" name="codiceFiscale" value="Codice_fiscale_utente">
						</div>
						<div class="element-right">
							<label class="field-name" for="cellulare"><b>Cellulare</b></label><br>
							<input type="text" id="cellulare" class="input-field inactive" name="cellulare" value="Cellulare_utente">
						</div>			
					</div>
				</div>
				<div id="user-contacts" class="column">
					<div id="user-credentials-top" class="row">
						<h2 class="section-name">Credenziali</h2>
						<input type="button" id="user-credentials-edit-button" class="active-edit-button" value="Modifica" onclick="editUserCredentials('user-credentials-edit-button','user-credentials-top')">
					</div>
					<div class="row">
						<div class="element-left">
							<label class="field-name" for="email"><b>Email</b></label><br>
							<input type="text" id="email" class="input-field inactive" name="email" value="Email_utente">
						</div>
						<div class="element-right">
							<label class="field-name" for="password"><b>Password</b></label><br>
							<input type="text" id="password" class="input-field inactive" name="password" value="********">
						</div>			
					</div>
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
		setUserSectionActive("user-data");
	</script>
</body>
</html>