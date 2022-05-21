<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>PetsWorld</title>
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
	<div class="home-content">
		<!-- Banner with news and sales -->
		<div class="banner">

		</div>
		<!-- Selection of the best products of the website -->
		<div class="best-products">
			<!-- Section of products selected -->
			<div class="products-section">
				<!-- Title of the section -->
				<h2>Più venduti</h2>
				<!-- Products to show in the row -->
				<div class="products-row">
					<c:forEach items="${list}" var="prd">
						<div class="product-box">
							<div class="image-container">
								<img src="static/images/${prd.foto}" alt="immagine prodotto">
							</div>
							<h3 class="name">${prd.nome}</h3>
							<div class="text-container">
								<h3 class="price">€ ${prd.prezzo}</h3>
								<form class="aggiunta-prodotto" action="ServletCarrello" method="get">
									<button class="aggiungi-prodotto" type="submit" name="id" value="${prd.idProdotto}">Aggiungi</button>
								</form>							
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="products-section">
				<h2>Novità</h2>
				<div class="products-row">
					<div class="product-box">
						<div class="image-container">
							<img src="static/images/cucciaPerCani.png" alt="immagine prodotto">
						</div>
						<h3 class="name">Template prodotto</h3>
						<div class="text-container">
							<div class="price">€99.99</div>
							<button>Aggiungi</button>
						</div>
					</div>
				</div>
			</div>
			<div class="products-section">
				<h2>Consigliati</h2>
				<div class="products-row">

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