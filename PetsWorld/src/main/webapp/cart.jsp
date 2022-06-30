<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Carrello</title>
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
	<div id="cart-content">
		<%
		HttpSession sessione = request.getSession(false);
		if (sessione != null)
		{
			double subtotale = 0;
			double costoTotale = 0;
			double costoSpedizione = 15;
			double prezzoDonazione = 0;
			Utente utente = (Utente) sessione.getAttribute("utente");
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
					for (int i=0; i<prodotti.size(); i++)
					{
					%>
					<div class="product-line" id="<%=prodotti.get(i).getIdProdotto()%>">
						<img src="./static/images/<%=prodotti.get(i).getFotografia()%>" alt="<%=prodotti.get(i).getFotografia()%>">
						<div class="product-name">
							<h2><%=prodotti.get(i).getNome()%></h2>
							<p>
								Prodotto nel carrello
							</p>
							<p id="<%=prodotti.get(i).getIdProdotto()%>_demo"></p>
						</div>
						<div class="product-values">
							<div class="product-modifiers">
								<div class="product-quantities">
                  					<button class="trash"onclick="funzioneDel('<%=prodotti.get(i).getIdProdotto()%>')"><i class="fa-solid fa-trash fa-2x"></i></button>
									<button class="left" onclick="funzioneMeno('<%=prodotti.get(i).getIdProdotto()%>')">-</button>
									<div class="quantities">
										<p id="<%=prodotti.get(i).getIdProdotto()%>_quantita"><%=prodotti.get(i).getQuantita()%></p>
									</div>
									<button class="right" onclick="funzionePiu('<%=prodotti.get(i).getIdProdotto()%>')">+</button>
								</div>
							</div>
							<h2 class="product-price">€<%=prodotti.get(i).getPrezzo()%></h2>
							<% subtotale += (prodotti.get(i).getPrezzo() * prodotti.get(i).getQuantita());
							   subtotale=Math.round(subtotale*100)/100.0;%>
						</div>
					</div>

					<% if (i + 1 < prodotti.size()) { %>
					<hr>
					<%
							}
						}
					%>
				</div>
				<div class="donation-box">
					<div class="info">
						<h2>Dona per gli animali in difficoltà</h2>
						<p>Puoi scegliere un importo da aggiungere all'ordine che verrà donato ad associazioni che si prendono cura degli animali. <a href="#">Dimmi di più.</a></p>
					</div>
					<div class="data">
						<input type="text" placeholder="€0.00">
						<button>Seleziona</button>
					</div>
				</div>
			</div>
			<div class="price-panel">
				<div class="price-box">
					<h1>Totale</h1>
					<div class="single-voice">
						<p>
							Subtotale
						</p>
						<p class="price" id="subtotale">
							€<%=subtotale%>
						</p>
					</div>
					<% if (subtotale >= 50) {
						costoSpedizione = 0;
					}%>
					<div class="single-voice">
						<p>
							Spese di spedizione
						</p>
						<p class="price" id="spedizione">
							€<%=costoSpedizione%>
						</p>
					</div>
					<div class="single-voice">
						<p>
							Donazione
						</p>
						<p class="price" id="donazione">
							€<%=prezzoDonazione%>
						</p>
					</div>
					<% costoTotale = subtotale + costoSpedizione + prezzoDonazione;%>
					<div class="span">
						<div class="single-voice">
							<p>
								Costo totale
								<br>
								<span class="small">(iva inclusa)</span>
							</p>
							<p class="price" id="totale">
								€<%=costoTotale%>
							</p>
						</div>
					</div>
					
						<%
							if(utente!=null)
							{
						%>
						
					<form method = "GET" action = "<%=response.encodeURL("./orderPage.jsp")%>">
						<button type="submit">Procedi all'ordine</button>
					</form>
					
						<%
							}
							else
							{	
						%>
						
						<p id="demo"></p>
						<button type="submit" onclick="DeviLoggartiPrima()">Procedi all'ordine</button>
						
						<%
							}
						%>
				</div>
			</div>
		</div>
		<%
				}
			}
		}
		%>

	</div>

	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>