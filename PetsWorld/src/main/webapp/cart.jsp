<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Carrello</title>
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
				<div id="cart-box" class="box">
					<h1 class="title">Carrello</h1>
					<%
					for (int i=0; i<prodotti.size(); i++)
					{
					%>
					<div class="product-line" id="<%=prodotti.get(i).getIdProdotto()%>">
						<img src="./static/images/<%=prodotti.get(i).getFoto()%>.png" alt="<%=prodotti.get(i).getFoto()%>.webp">
						<div class="product-name">
							<form action="ServletCercaProdotto" method="get">
								<button class="product-link" type="submit" name="id" value="<%=prodotti.get(i).getIdProdotto()%>">
									<h2><%=prodotti.get(i).getNome()%></h2>
								</button>
							</form>
							<div class="row">
								<%
						if(prodotti.get(i).getPeso()!=null)
						{
					%>
					<p id="prod-weight" class="product-data-box"><%=prodotti.get(i).getPeso()%></p>
					<%
						}
						if(prodotti.get(i).getDimensione()!=null)
						{
					%>
					<p id="prod-size" class="product-data-box"><%=prodotti.get(i).getDimensione()%></p>
					<%
						}
						if(prodotti.get(i).getColore()!=null)
						{
					%>
					<p id="prod-color" class="product-data-box"><%=prodotti.get(i).getColore()%></p>
					<%
						}
					%>
					</div>
							<p id="<%=prodotti.get(i).getIdProdotto()%>_demo"></p>
						</div>
						<div class="product-values">
							<div class="product-modifiers">
								<div class="product-quantities">
                  					<button class="trash" onclick="funzioneDel('<%=prodotti.get(i).getIdProdotto()%>')"><i class="fa-solid fa-trash fa-2x"></i></button>
									<!-- FUNZIONE JAVASCRIPT PER DIMINUZIONE QUANTITA -->
									<button class="active-basic-button left" onclick="funzioneMeno('<%=prodotti.get(i).getIdProdotto()%>')">-</button>
									<div class="quantities">
									<!-- QUI VIENE VISUALIZZATA LA QUANTITA DEL PRODOTTO-->
										<p id="<%=prodotti.get(i).getIdProdotto()%>_quantita"><%=prodotti.get(i).getQuantita()%></p>
									</div>
									<!-- FUNZIONE JAVASCRIPT PER AUMENTO QUANTITA -->
									<button class="active-basic-button right" onclick="funzionePiu('<%=prodotti.get(i).getIdProdotto()%>')">+</button>
								</div>
							</div>
							<h2 class="product-price">€<%=String.format("%,.2f", (prodotti.get(i).getPrezzo()))%></h2>
							<% subtotale += (prodotti.get(i).getPrezzo() * prodotti.get(i).getQuantita());
							   subtotale=Math.round(subtotale*100)/100.0;%>
						</div>
					</div>

					<%
						}
					%>
				</div>
			</div>
			<div class="price-panel">
				<div id="price-box" class="box">
					<h1 class="title">Totale</h1>
					<div class="single-voice">
						<p>
							Subtotale
						</p>
						<p class="price" id="subtotale">
							€<%=String.format("%,.2f", (subtotale))%>
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
							€<%=String.format("%,.2f", (costoSpedizione))%>
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
								€<%=String.format("%,.2f", (costoTotale))%>
							</p>
						</div>
					</div>
					
						<!-- DETERMINO SE L'UTENTE è LOGGATO, NEL CASO PROCEDO ALL'ORDINE SENO ESCE AVVISO -->
						<%
						
							if(utente!=null)
							{
						%>
						
					<form method = "GET" action = "<%=response.encodeURL("./orderPage.jsp")%>">
						<button type="submit" class="active-accent-button">Procedi all'ordine</button>
					</form>
					
						<%
							}
							else
							{	
						%>
						
						<p id="login-error-message"></p>
						<button type="submit" class="active-accent-button" onclick="DeviLoggartiPrima()">Procedi all'ordine</button>
						
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