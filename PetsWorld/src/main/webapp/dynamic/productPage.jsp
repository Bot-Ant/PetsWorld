<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pagina Prodotto</title>
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
	<div class="product-page-content">
		<div class="product-top-row">
			<div class="product-images">
				<img src="" alt="Immagine Prodotto">
			</div>
			<form class="product-form" action="">
				<h1>Nome del prodotto</h1>
				<p>
					€xx.xx
				</p>
				<button>Aggiungi al carrello</button>
			</form>
		</div>
		<div class="product-description">
			<p>
				Descrizione dettagliata del prodotto.
			</p>
		</div>
		<div class="product-reviews">
			
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>