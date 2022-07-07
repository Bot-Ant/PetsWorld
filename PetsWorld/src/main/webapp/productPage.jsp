<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pagina Prodotto</title>
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
	
	<%
		Prodotto prodotto= new Prodotto();
		prodotto= (Prodotto) request.getAttribute("prodotto");
	%>
	
	<div class="product-page-content">
		<div class="product-top-row">
			<div class="product-images">
				<img src="./static/images/<%=prodotto.getFotografia() %>" alt="Immagine Prodotto">
			</div>
			<div class="product-info" action="">
				<h1 class="product-name"><%=prodotto.getNome()%></h1>				
				<h2 class="product-price">€<%=prodotto.getPrezzo()%></h2>
				<p class="parameter-tag">Dettagli</p>
				<div id="product-distinct-info" class="row">
					<div id="prod-weight" class="product-data-box">
						12KG
					</div>
					<div id="prod-size" class="product-data-box-missing">
						VUOTO
					</div>
					<div id="prod-color" class="product-data-box-missing">
						VUOTO
					</div>
					<div id="prod-expiry-date" class="product-data-box">
						Scadenza 2025/04/10
					</div>
				</div>
				<p class="parameter-tag">Quantità</p>
				<div class="product-parameter">
					<div class="product-modifiers">
						<div class="product-quantities">
							<button class="left">-</button>
							<div class="quantities">
								<p id="">1</p>
							</div>
							<button class="right">+</button>
						</div>
					</div>
				</div>
				<p id="product-availability">Disponibile</p>
				<div class="add-to-cart" action="">
					<button type="submit" name="id" value="<%=prodotto.getIdProdotto()%>" onclick="aggiungiAlCarrello('<%=prodotto.getIdProdotto()%>')">Aggiungi al carrello</button>
				</div>
			</div>
		</div>
		<div class="product-description">
			<h2 class="section-title">Descrizione</h2>
			<p>
				<%=prodotto.getDescrizione()%>
			</p>
		</div>
		<div class="product-reviews">
			<h2 class="section-title">Recensioni</h2>
		</div>
	</div>
	
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>