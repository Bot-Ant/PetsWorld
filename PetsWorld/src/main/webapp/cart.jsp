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
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div class="cart-content">
		<%
		HttpSession sessione = request.getSession(false);
		if (sessione != null) 
		{	
			double subtotale = 0;
			double costoTotale = 0;
			double costoSpedizione = 15;
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
						<img src="./static/images/<%=prodotti.get(i).getFoto()%>" alt="<%=prodotti.get(i).getFoto()%>">				 
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
                  <button class="trash"onclick="funzioneDel('<%=prodotti.get(i).getIdProdotto()%>')">Del</button>
									<button class="left" onclick="funzioneMeno('<%=prodotti.get(i).getIdProdotto()%>')">-</button>
									<p id="<%=prodotti.get(i).getIdProdotto()%>_quantita"><%=prodotti.get(i).getQuantita()%></p>
									<button class="right" onclick="funzionePiu('<%=prodotti.get(i).getIdProdotto()%>')">+</button>
								</div>
							</div>
							<h3 class="product-price">€<%=prodotti.get(i).getPrezzo()%></h3>
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
					<% costoTotale = subtotale + costoSpedizione;%>
					<span>
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
		
	</div>
	
		<%
		String url = response.encodeURL("AumentoProdottoCarrello");
		String url1 = response.encodeURL("DiminuizioneProdottoCarrello");
		String url2= response.encodeURL("RimozioneDaCarrello");
		%>
	
<script>
	function funzionePiu(id)
	{
		var url = '<%=url%>' + "?id=" + encodeURIComponent(id); //metto url passando come parametro id del prodotto
		//var url = 'AumentoProdottoCarrello?id=' + encodeURIComponent(id); 
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = //alla risposta della servlet
			function() //aumenta di 1 unità nel carrello
			{
				if(xhr.readyState == 4 && xhr.status == 200)
				{
					var response = JSON.parse(xhr.responseText);
					var stringa=response.riferimento;
					var stringa2=response.riferimento2;
					if(response.esaurimento==1)
						{
							document.getElementById(stringa2).innerHTML = "Esaurimento scorte nel magazzino";
						}
					else
						{
							document.getElementById(stringa2).innerHTML = "";
						}
					document.getElementById(stringa).innerHTML=response.quantita;
					document.getElementById("quantita_carrello").innerHTML = response.totale;
					document.getElementById("subtotale").innerHTML = response.prezzoTot + " &euro;";
					var prezzo = parseFloat(response.prezzoTot);
					if (prezzo < 50)
						{
							document.getElementById("totale").innerHTML= prezzo+15 + " &euro;";
							document.getElementById("spedizione").innerHTML= "15.0&euro;";
						}
					else
						{
							document.getElementById("spedizione").innerHTML= "0.0&euro;";
							document.getElementById("totale").innerHTML= response.prezzoTot + " &euro;";
						}
				}
			}
		xhr.open("GET",url,true);
		xhr.send(null);
	}
	
	function funzioneMeno(id)
	{
		var url = '<%=url1%>' + "?id=" + encodeURIComponent(id); //metto url passando come parametro id del prodotto
		//var url = 'DiminuizioneProdottoCarrello?id=' + encodeURIComponent(id); 
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = //alla risposta della servlet
			function() //diminuisce di 1 unità nel carrello
			{
				if(xhr.readyState == 4 && xhr.status == 200)
				{
					var response = JSON.parse(xhr.responseText);
					var stringa=response.riferimento;
					var stringa2=response.riferimento2;
					document.getElementById(stringa2).innerHTML = "";
					document.getElementById(stringa).innerHTML=response.quantita;
					document.getElementById("quantita_carrello").innerHTML = response.totale;
					document.getElementById("subtotale").innerHTML = response.prezzoTot + " &euro;";
					var prezzo = parseFloat(response.prezzoTot);
					if (prezzo < 50)						{
							document.getElementById("totale").innerHTML= prezzo+15 + " &euro;";
							document.getElementById("spedizione").innerHTML= "15.0&euro;";

						}
					else
						{
							document.getElementById("spedizione").innerHTML= "0.0&euro;";
							document.getElementById("totale").innerHTML= response.prezzoTot + " &euro;";
						}
				}
			}
		xhr.open("GET",url,true);
		xhr.send(null);
	}
	
	function funzioneDel(id)
	{
		var url = '<%=url2%>'+"?id=" + encodeURIComponent(id);
		//var url = 'RimozioneDaCarrello?id=' + encodeURIComponent(id); 
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = //alla risposta della servlet
			function() //rimuovi il prodotto dal carrello
			{
				if(xhr.readyState == 4 && xhr.status == 200)
				{
					var response = JSON.parse(xhr.responseText);
					var stringa= response.riferimento;
					document.getElementById(stringa).remove();
					document.getElementById("quantita_carrello").innerHTML = response.totale;
					document.getElementById("subtotale").innerHTML = response.prezzoTot + " &euro;";
					var prezzo = parseFloat(response.prezzoTot);
					if (prezzo < 50)
					{
						
						document.getElementById("totale").innerHTML= prezzo+15;
						document.getElementById("spedizione").innerHTML= "15.0&euro;";

					}
					else
					{
						document.getElementById("spedizione").innerHTML= "0.0&euro;";
						document.getElementById("totale").innerHTML= response.prezzoTot;
					}
					
					var totaleElementi = response.totale;
					if(totaleElementi == 0)
					{
						document.getElementById("full").innerHTML ="<h1>il carrello è vuoto</h1>";
					}
				}
			}
		xhr.open("GET",url,true);
		xhr.send(null);
	}
	
</script>

	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>