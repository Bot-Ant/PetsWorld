<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pagina utente</title>
	<link rel="stylesheet" href="../static/styles/light.css">
	<link rel="stylesheet" href="../static/styles/page.css">
    <link rel="stylesheet" href="../static/styles/header.css">
    <link rel="stylesheet" href="../static/styles/footer.css">
    <link rel="stylesheet" href="../static/styles/user.css">
	<link rel="stylesheet" href="../static/styles/catalog.css">
	<link rel="stylesheet" href="../static/styles/order.css">
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div class="user-content">
		<ul class="user-nav">
			<li class="link" id="active">
				<i class="fa-solid fa-user"></i>
				<a href="#">My petsworld</a>
			</li>
			<li><h2>Gestione account</h2></li>
			<li class="link">
				<i class="fa-solid fa-receipt"></i>
				<a href="./userOrders.jsp">Ordini</a>
			</li>
			<li class="link">
				<i class="fa-solid fa-id-card"></i>
				<a href="./userData.jsp">Dati personali</a>
			</li>
			<li class="link">
				<i class="fa-solid fa-map"></i>
				<a href="./userAddresses.jsp">Indirizzi</a>
			</li>
			<li class="link">
				<i class="fa-solid fa-credit-card"></i>
				<a href="./userPayMethods.jsp">Metodi di pagamento</a>
			</li>
			<li><h2>Gestione animali</h2></li>
			<li class="link">
				<i class="fa-solid fa-paw"></i>
				<a href="#"> Animali adottati</a>
			</li>
			<hr>
			<li class="link">
				<i class="fa-solid fa-arrow-right-from-bracket"></i>
				<a class="disconnect" href="LogoutServlet">Disconnettiti</a>
			</li>
		</ul>
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
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>