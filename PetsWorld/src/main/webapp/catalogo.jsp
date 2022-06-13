<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Catalogo</title>
	<link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div class="catalog-content">
		<div class="filters-panel">
			<p>
				Filtri di ricerca avanzata all'interno della pagina
			</p>
		</div>
		<div class="catalog-main-panel">
			<div class="catalog-top">
				<h1>Prodotti per [Nome Animale]</h1>
				<p>
					Informazioni sulla categoria di prodotto che si sta cercando sul sito web.
				</p>
			</div>
			<div class="catalog-products">
				<c:forEach items="${prodotto}" var="prd">
					<div class="product-box">
						<div class="image-container">
							<img src="./static/images/${prd.foto}" alt="immagine prodotto">
						</div>
						<h3 class="name">${prd.nome}</h3>
						<div class="text-container">
							<h2 class="price">€${prd.prezzo}</h2>
                			<form class="add-to-cart" action="ServletCarrello" method="get">
								<button type="submit" name="id" value="${prd.idProdotto}"><i class="fa-solid fa-circle-plus fa-3x"></i></button>
							</form>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>