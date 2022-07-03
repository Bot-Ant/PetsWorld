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
				<div class="column" id="user-info">
					<div class="row">
						<h2 class="section-name">Dati</h2>
						<button class="active-edit-button">Modifica</button>
					</div>
					<div class="row">
						<div class="element-left">
							<label class="field-name" for="nome"><b>Nome</b></label><br>
							<label class="field-content" for="nome">Nome</label>
						</div>
						<div class="element-right">
							<label class="field-name" for="cognome"><b>Cognome</b></label><br>
							<label class="field-content" for="cognome">Cognome</label>
						</div>			
					</div>
					<div class="row">
						<div class="element-left">
							<label class="field-name" for="codiceFiscale"><b>Codice Fiscale</b></label><br>
							<label class="field-content" for="codiceFiscale">Codice Fiscale</label>
						</div>
						<div class="element-right">
							<label class="field-name" for="cellulare"><b>Cellulare</b></label><br>
							<label class="field-content" for="cellulare">Cellulare</label>
						</div>			
					</div>
				</div>
				<div class="column" id="user-contacts">
					<div class="row">
						<h2 class="section-name">Credenziali</h2>
						<button class="active-edit-button">Modifica</button>
					</div>
					<div class="row">
						<div class="element-left">
							<label class="field-name" for="email"><b>Email</b></label><br>
							<label class="field-content" for="email">Email</label>
						</div>
						<div class="element-right">
							<label class="field-name" for="password"><b>Password</b></label><br>
							<label class="field-content" for="password">********</label>
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