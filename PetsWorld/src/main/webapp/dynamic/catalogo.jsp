<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Catalogo</title>
	<link rel="stylesheet" href="static/styles/light.css">
	<link rel="stylesheet" href="static/styles/page.css">
    <link rel="stylesheet" href="static/styles/header.css">
    <link rel="stylesheet" href="static/styles/footer.css">
    <link rel="stylesheet" href="static/styles/user.css">
	<link rel="stylesheet" href="static/styles/catalog.css">
</head>
<body>
	<header>
		<!-- Standard header -->
		<%@include file="/dynamic/header.jsp" %>
	</header>
	<div class="catalog-content">
		<div class="filters-panel">
			<p>
				Filtri di ricerca avanzata all'interno della pagina
			</p>
		</div>
		<div class="catalog-main-panel">
			<div class="catalog-top">
				<h1>Titolo della pagina del carrello</h1>
				<p>
					Informazioni sulla categoria di prodotto che si sta cercando sul sito web.
				</p>
			</div>
			<div class="catalog-products">
				<c:forEach items="${prodotto}" var="prd">
					<div class="product-box">
						<div class="image-container">
							<img src="static/images/${prd.foto}">
						</div>
						<h3 class="name">${prd.nome}</h3>
						<div class="text-container">
							<div class="price">
								${prd.prezzo}
							</div>
							<button>Aggiungi</button>
						</div>
					</div>
                </c:forEach>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<%@include file="/dynamic/footer.jsp" %>
	</footer>
</body>
</html>