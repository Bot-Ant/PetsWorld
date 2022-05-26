<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pagina utente</title>
</head>
<body>
	<header>
		<!-- Standard header -->
		<%@include file="/dynamic/header.jsp" %>
	</header>
	<div class="user-content">
		<div class="user-nav">
			<a class="active" href="#">My petsworld</a>
			<h2>Gestione account</h2>
			<a href="#">Ordini</a>
			<a href="#">Dati personali</a>
			<a href="#">Indirizzi</a>
			<a href="#">Metodi di pagamento</a>
			<h2>Gestione animali</h2>
			<a href="#"></a>
			<a class="disconnect" href="#">Disconnettiti</a>
		</div>
		<div class="data-panel">
			<div class="welcome">
				<h1>My petsworld</h1>
				<p>
					Ciao [nome utente], benvenuto nel tuo spazio personale.
				</p>
			</div>
			<div class="extra">
				<div class="donazioni">

				</div>
				<div class="adozioni">
					
				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<%@include file="/dynamic/footer.jsp" %>
	</footer>
</body>
</html>