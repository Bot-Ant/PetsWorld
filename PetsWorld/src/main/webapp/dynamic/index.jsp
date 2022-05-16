<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
					<div class="product-box">
						<div class="image-container">
							<img src="static/images/dog-house.png" alt="immagine prodotto">
						</div>
						<h3 class="name">Nome prodotto</h3>
						<div class="text-container">
							<h3 class="price">€24,90</h3>
							<button class="add-to-cart">Aggiungi</button>
						</div>
					</div>
					<div class="product-box">
						<div class="image-container">
							<img src="static/images/dog-house.png" alt="immagine prodotto">
						</div>
						<h3 class="name">Nome prodotto ma più lungo</h3>
						<div class="text-container">
							<h3 class="price">€121,90</h3>
							<button class="add-to-cart">Aggiungi</button>
						</div>
					</div>
					<div class="product-box">
						<div class="image-container">
							<img src="static/images/dog-house.png" alt="immagine prodotto">
						</div>
						<div class="text-container">
							<h3 class="price">€69,90</h3>
							<button class="add-to-cart">Aggiungi</button>
						</div>
					</div>
					<div class="product-box">
						<div class="image-container">
							<img src="static/images/dog-house.png" alt="immagine prodotto">
						</div>
						<div class="text-container">
							<h3 class="price">€44,90</h3>
							<button class="add-to-cart">Aggiungi</button>
						</div>
					</div>
				</div>
			</div>
			<div class="products-section">
				<h2>Novità</h2>
				<div class="products-row">

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