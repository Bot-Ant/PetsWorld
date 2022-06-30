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
				<p id="product-availability">Disponibile</p>
				<p class="parameter-tag">Quantità</p>
				<div class="main-elements">

				</div>
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