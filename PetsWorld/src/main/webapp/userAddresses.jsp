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
					<button class="active-basic-button">Aggiungi indirizzo</button>
				</div>
				<!-- if there is at least one saved address -->
				<div id="add-address" class="row">
					<button class="active-basic-button">Aggiungi indirizzo</button>
				</div>
				<hr>
				<div class="loop">
					<div class="address-line">
						<div class="row">
							<div class="address-data">
								<h3 class="address-name">Nome_strada Civico</h3>
								<p>Città - Provincia</p>
								<p>CAP</p>
							</div>
							<button class="active-edit-button">Modifica</button>
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
</body>
</html>