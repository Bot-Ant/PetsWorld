<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pagina Prodotto</title>
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	
	<%
		Prodotto prodotto= new Prodotto();
		prodotto= (Prodotto) request.getAttribute("prodotto");
	%>
	
	<div id="product-page-content">
		<div id="product-top" class="row">
			<img id="product-image" src="./static/images/<%=prodotto.getFoto()%>.png" alt="immagine prodotto">
			<div id="product-info" class="box">
				<h1 class="product-name"><%=prodotto.getNome()%></h1>	
							
				<h2 class="product-price">€<%= String.format("%,.2f", (prodotto.getPrezzo()))%></h2>
				<p class="parameter-tag">Dettagli</p>
				<div id="product-distinct-info" class="row">
					
					<%
						if(prodotto.getPeso()!=null && !(prodotto.getPeso().equals("null")))
						{
					%>
					<div id="prod-weight" class="product-data-box"><%=prodotto.getPeso()%></div>
					<%
						}
						if(prodotto.getDimensione()!=null && !(prodotto.getDimensione().equals("null")))
						{
					%>
					<div id="prod-size" class="product-data-box"><%=prodotto.getDimensione()%></div>
					<%
						}
						if(prodotto.getColore()!=null && !(prodotto.getColore().equals("null")))
						{
					%>
					<div id="prod-color" class="product-data-box"><%=prodotto.getColore()%></div>
					<%
						}
						if(prodotto.getDataScadenza()!=null && !(prodotto.getDataScadenza().equals("null")))
						{
					%>
					<div id="prod-expiry-date" class="product-data-box">Scadenza:<%=prodotto.getDataScadenza()%></div>
					<%
						}
					%>
					
				</div>
				<p class="parameter-tag">Quantità</p>
				<div class="product-parameter">
					<div class="product-modifiers">
						<div class="product-quantities">	
            
							<%
							HttpSession sessione = request.getSession(false);
							// SETTO UN ATTRIBUTO DELLA SESSIONE PER FARE IN MODO DI MANTENERE LA QUANTITA SALVATA. LO SETTO AD UNO AD OGNI RICARICAMENTO DELLA PAGINA
							sessione.setAttribute("quantita_product_page", new Integer(1));
							int quantita = ((Integer)session.getAttribute("quantita_product_page")).intValue();
							%>
							<!--FUNZIONE JAVASCRIPT PER LA DIMINUZIONE DELLA QUANTITA --> 
							<button class="active-basic-button left" onclick="DiminuzioneQuantita('<%=prodotto.getIdProdotto()%>', 'diminuzione')">-</button>
							<div class="quantities">	
							<!--QUI SI TIENE CONTO DELLA QUANTITA DEL PRODOTTO --> 							
								<p id="quantita"><%=quantita%></p>
							</div>
							<!--FUNZIONE JAVASCRIPT PER L'AUMENTO DELLA QUANTITA --> 
							<button class="active-basic-button right" onclick="AumentoQuantita('<%=prodotto.getIdProdotto()%>', 'aumento')">+</button>
						</div>
						<p id="demo"></p>
						<p id="demo_1"></p>
					</div>
				</div>
				<p id="product-availability">Disponibile</p>
				<div class="add-to-cart">
						<!--FUNZIONE JAVASCRIPT PER L'AGGIUNTA DEL PRODOTTO AL CARRELLO DALLA PRODUCT PAGE --> 
					<button type="submit" name="id" value="<%=prodotto.getIdProdotto()%>" onclick="AggiungiAlCarrello('<%=prodotto.getIdProdotto()%>', 'acquisto')">Aggiungi al carrello</button>
				</div>
			</div>
		</div>
		<div id="product-description" class="box">
			<div class="content">
				<h2 class="section-title">Descrizione</h2>
				<p>
					<%=prodotto.getDescrizione()%>
				</p>
			</div>
		</div>
		
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
	<script type="text/javascript" src="./static/scripts/productPage.js"></script>
</body>
</html>