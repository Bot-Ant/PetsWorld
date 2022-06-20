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
	<div class="user-content">
		<div class="user-nav">
			<a href="./userAccount.jsp">My petsworld</a>
			<h2>Gestione account</h2>
			<a href="./userOrders.jsp">Ordini</a>
			<a href="./userData.jsp">Dati personali</a>
			<a href="./userAddresses.jsp">Indirizzi</a>
			<a class="active" href="#">Metodi di pagamento</a>
			<h2>Gestione animali</h2>
			<a href="#"> Animali adottati</a>
			<a class="disconnect" href="#">Disconnettiti</a>
		</div>
		<div class="data-panel">
			<div class="welcome">
				<h1>Metodi di pagamento</h1>
				<p>
					Questi sono tutti i metodi di pagamento che hai salvato.
				</p>
			</div>
			<div class="pay-methods-box">
				<div class="pay-methods-line">

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