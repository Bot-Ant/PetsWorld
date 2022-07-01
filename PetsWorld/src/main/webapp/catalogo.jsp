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
	<script type="text/javascript" src="./static/scripts/cart.js"></script>
	
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
			<c:forEach items="${prodotto}" var="prd">
                <jsp:include page="./static/templates/catalogHeader${prd.animale}.html"/>
                </c:forEach>
			</div>
			<div class="catalog-products">
				<c:forEach items="${prodotto}" var="prd">
					<div class="product-box">
						<form action="<%=response.encodeURL("ServletCercaProdotto")%>" method="get">
							<button class="product-link" type="submit" name="id" value="${prd.idProdotto}">
								<div class="image-container">
									<img src="./static/images/${prd.fotografia.foto}.webp" alt="immagine prodotto">
									<p class="out-of-stock" id="${prd.idProdotto}_demo_1">TERMINATO</p>
									<p class="discount" id="${prd.idProdotto}-discount">SCONTO</p>
								</div>
								<h3 class="name">${prd.nome}</h3>
								<div class="text-container">
									<h2 class="price">€${prd.prezzo}</h2>
								</div>
							</button>
						</form>
						<div class="add-to-cart">
							<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrelloDaIndex(${prd.idProdotto}, 1)"><i class="fa-solid fa-circle-plus fa-3x"></i></button>
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