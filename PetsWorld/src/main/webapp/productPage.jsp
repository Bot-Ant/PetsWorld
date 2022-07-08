<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script type="text/javascript" src="./static/scripts/cartProductPage.js"></script>

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
				<c:forEach items="${foto}" var="ft">
				<img src="./static/images/${ft.foto}.webp" alt="immagine prodotto">
				</c:forEach>			
			</div>
			<div class="product-info">
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
            
							<%
							HttpSession sessione = request.getSession(false);
							sessione.setAttribute("quantita_product_page", new Integer(1));
							int quantita = ((Integer)session.getAttribute("quantita_product_page")).intValue();
							%>
															
							<button class="active-basic-button left" onclick="DiminuzioneQuantita('<%=prodotto.getIdProdotto()%>', 'diminuzione')">-</button>
							<div class="quantities">								
								<p id="quantita"><%=quantita%></p>
							</div>
							<button class="active-basic-button right" onclick="AumentoQuantita('<%=prodotto.getIdProdotto()%>', 'aumento')">+</button>
						</div>
						<p id="demo"></p>
						<p id="demo_1"></p>
					</div>
				</div>
				<p id="product-availability">Disponibile</p>
				<div class="add-to-cart">
					<button type="submit" name="id" value="<%=prodotto.getIdProdotto()%>" onclick="AggiungiAlCarrello('<%=prodotto.getIdProdotto()%>', 'acquisto')">Aggiungi al carrello</button>
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