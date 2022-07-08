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
				<div id="no-pay-methods" class="row" style="display: none;">
					<h2 class="message">Non hai metodi di pagamento salvati</h2>
					<button class="active-basic-button">Aggiungi metodo di pagamento</button>
				</div>
				<!-- if there is at least one saved payment method -->
				<div id="add-pay-method" class="row">
					<button class="active-basic-button">Aggiungi metodo di pagamento</button>
				</div>
				<hr>
				<div class="loop">
					<div class="pay-method-line">
						<div class="row">
							<div class="pay-method-data">
								<h3 class="pay-method-name">Numero_carta</h3>
								<p>Proprietario</p>
								<p>Data_scadenza</p>
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
	<script type="text/javascript" src="./static/scripts/page.js"></script>
	<script type="text/javascript" src="./static/scripts/user.js"></script>
	<script>
		setUserSectionActive("user-payments");
	</script>
</body>
</html>