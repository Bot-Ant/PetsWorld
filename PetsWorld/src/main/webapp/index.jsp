<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>PetsWorld</title>
</head>
<body>	
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div class="home-content">
		<!-- Banner with news and sales --> 
		<div class="banner-container">
			<div class="banner">
				<i class="fa-solid fa-chevron-left" id="prevbtn"></i>
				<i class="fa-solid fa-chevron-right" id="nextbtn"></i>
            	<div class="pre-botton">
					<c:forEach items="${banner}" var="ban">
						<img src="./static/images/${ban.immagine}" alt="immagine banner">
					</c:forEach>
					<script src="./static/scripts/banner.js" ></script>
				</div>
			</div>
		</div>
		<div class="website-stripe">
			<h1>PetsWorld</h1>
			<h2>Leader nel mondo del Pet</h2>
			<p>
				PetsWorld è il sito e-commerce per i tuoi animali domestici. La nostra piattaforma di acquisti online, leader in Italia e in Europa, è pratica e affidabile e si impegna a offrire ai proprietari di animali domestici il migliore servizio possibile per acquistare cibo e accessori per i loro pet.
			</p>
		</div>
		<!-- Selection of the best products of the website -->
		<div class="best-products">
			<!-- Section of products selected -->
			<div class="products-section">
				<!-- Title of the section -->
				<h1>I prodotti più venduti</h1>
				<!-- Products to show in the row -->
				<div class="products-row">
					<c:forEach items="${venduto}" var="prd">
						<div class="product-container">
							<div class="product-box">
								<form action="<%=response.encodeURL("ServletCercaProdotto")%>" method="get">
									<button class="product-link" type="submit" name="id" value="${prd.idProdotto}">
										<div class="image-container">
											<img src="./static/images/${prd.foto}.png" alt="immagine prodotto">
											<p class="out-of-stock" id="${prd.idProdotto}_demo_1">TERMINATO</p>
										</div>
										<h3 class="name">${prd.nome}</h3>
										<div class="text-container">
											<h2 class="price">€${String.format("%,.2f", (prd.prezzo))}</h2>
										</div>
									</button>
								</form>
								<div class="add-to-cart">
									<!-- FUNZIONE JAVASCRIPT PER AGGIUNGERE AL CARRELLO PRODOTTI DALL'INDEX-->
									<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrelloDaIndex(${prd.idProdotto}, 1)"><i class="fa-solid fa-circle-plus fa-3x"></i></button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="products-section">
				<h1>Le novità PetsWorld</h1>
				<div class="products-row">
					<c:forEach items="${consigliato}" var="prd">
						<div class="product-container">
							<div class="product-box">
								<form action="<%=response.encodeURL("ServletCercaProdotto")%>" method="get">
									<button class="product-link" type="submit" name="id" value="${prd.idProdotto}">
										<div class="image-container">
											<img src="./static/images/${prd.foto}.png" alt="immagine prodotto">
											<p class="out-of-stock" id="${prd.idProdotto}_demo_2">TERMINATO</p>
										</div>
										<h3 class="name">${prd.nome}</h3>
										<div class="text-container">
											<h2 class="price">€${String.format("%,.2f", (prd.prezzo))}</h2>
										</div>
									</button>
								</form>
								<div class="add-to-cart">
								<!-- FUNZIONE JAVASCRIPT PER AGGIUNGERE AL CARRELLO PRODOTTI DALL'INDEX-->
									<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrelloDaIndex(${prd.idProdotto}, 1)"><i class="fa-solid fa-circle-plus fa-3x"></i></button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="products-section">
				<h1>I prodotti più consigliati</h1>
				<div class="products-row">
					<c:forEach items="${novito}" var="prd">
						<div class="product-container">
							<div class="product-box">
								<form action="<%=response.encodeURL("ServletCercaProdotto")%>" method="get">
									<button class="product-link" type="submit" name="id" value="${prd.idProdotto}">
										<div class="image-container">
											<img src="./static/images/${prd.foto}.png" alt="immagine prodotto">
											<p class="out-of-stock" id="${prd.idProdotto}_demo_3">TERMINATO</p>
										</div>
										<h3 class="name">${prd.nome}</h3>
										<div class="text-container">
											<h2 class="price">€${String.format("%,.2f", (prd.prezzo))}</h2>
										</div>
									</button>
								</form>
								<div class="add-to-cart">
								<!-- FUNZIONE JAVASCRIPT PER AGGIUNGERE AL CARRELLO PRODOTTI DALL'INDEX-->
									<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrelloDaIndex(${prd.idProdotto}, 1)"><i class="fa-solid fa-circle-plus fa-3x"></i></button>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
	<script type="text/javascript" src="./static/scripts/index.js"></script>
</body>
</html>