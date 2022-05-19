<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pagina Prodotto</title>
</head>
<body>
	<header>
		<!-- Standard header -->
		<%@include file="/dynamic/header.jsp" %>
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
		<%@include file="/dynamic/footer.jsp" %>
	</footer>
</body>
</html>