<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Carrello</title>
	<link rel="stylesheet" href="../static/styles/light.css">
	<link rel="stylesheet" href="../static/styles/page.css">
    <link rel="stylesheet" href="../static/styles/header.css">
    <link rel="stylesheet" href="../static/styles/footer.css">
    <link rel="stylesheet" href="../static/styles/user.css">
	<link rel="stylesheet" href="../static/styles/catalog.css">
	<link rel="stylesheet" href="../static/styles/order.css">
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div class="cart-content">
		<%
		HttpSession sessione = request.getSession(false);
		if (sessione != null) 
		{	
			double prezzoTot=0;
			Carrello carrello = (Carrello) sessione.getAttribute ("carrello");
			if(carrello != null)
			{
				if(carrello.getQuantita() == 0)
				{
					//codice se carrello non ha elementi
		%>
		<div id="empty">
			<h1>Il carrello è vuoto</h1>
			<p>
				Aggiungi prodotti al carrello per visualizzarli in questa sezione.
			</p>
		</div>					
		<%
		}
		else
		{
			//codice se carrello ha elementi
			ArrayList <Prodotto> prodotti = carrello.getProdotti();
		%>
		<div id="full">
			<div class="cart-panel">
				<div class="cart-box">
					<h1>Carrello</h1>
					<%
					int i=0;
					for (; i<prodotti.size(); i++)
					{
					%>
					<div class="product-line">
						<img src="static/images/<%=prodotti.get(i).getNome()%>.jpg" alt="<%=prodotti.get(i).getNome()%>">				 
						<div class="product-name">
							<h2><%=prodotti.get(i).getNome()%></h2>
							<p>
								Prodotto nel carrello
							</p>
						</div>
						<div class="product-values">
							<form class="product-modifiers">
								<button>Del</button>
								<div class="product-quantities">
									<button class="left">-</button>
									<input type="text">
									<button class="right">+</button>
								</div>
							</form>
							<h3 class="product-price"><%=prodotti.get(i).getPrezzo()%></h3>
							<% prezzoTot = prezzoTot + (prodotti.get(i).getPrezzo() * prodotti.get(i).getQuantita());%>
						</div>
					</div>
					<hr>
					<%
					} 
					%>
				</div>
			</div>
			<div class="price-panel">
				<div class="price-box">
					<h1>Totale</h1>
					<div class="single-voice">
						<p>
							Subtotale
						</p>
						<p class="price">
							<%=prezzoTot%> &euro;
						</p>
					</div>
					<div class="single-voice">
						<p>
							Spese di spedizione
						</p>
						<p class="price">
							€xx.xx
						</p>
					</div>
					<span>
						<div class="single-voice">
							<p>
								Costo totale 
								<br>
								<span class="small">(iva inclusa)</span>
							</p>
							<p class="price">
								€xx.xx
							</p>
						</div>
					</span>
					<form method = "GET" action = "<%=response.encodeURL("./datiCartaAcquisto.jsp")%>">
						<button>Procedi all'ordine</button>
					</form>
				</div>
			</div>
		</div>
		<%
					}
				}
			}
		%>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>