<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*, model.beans.* , java.lang.*, java.util.ArrayList"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" type="image/png" href="./static/images/website-logo-icon.png">
	<link rel="stylesheet" href="./static/styles/fattura.css">
	<link rel="stylesheet" href="./static/styles/page.css">
</head>
<body>
	<div id="container-fattura">
		<%
			HttpSession sessione = request.getSession(false);
			Utente user=(Utente) sessione.getAttribute("utente");
			String data=(String) request.getAttribute("data_ordine");
			Double totale=(Double) request.getAttribute("totale");
			Indirizzo indirizzo= (Indirizzo) request.getAttribute("indirizzo");
			int id= (int) request.getAttribute("id_ordine");
		%>

		<div id="box-fattura">
			<div id="intestazione" class="row">
				<img src="./static/images/petsworld-logo.svg" alt="Logo PetsWorld">
				<div id="info-venditore" class="column">
					<p>Via Sansone, 54</p>
					<p>84084 Fisciano (SA)</p>
					<p>CF: MRCRSS70C21F839A</p>
					<p>P.IVA: 03398567403</p>
					<p>Telefono: +39 327 362 9020</p>
				</div>
			</div>
			<hr>
			<div id="info-fattura" class="row">
				<div id="dati-utente">
					<h3>DESTINATARIO</h3>
					<p><%=user.getNome()%> <%=user.getCognome()%></p>
					<p><%=indirizzo.getNome_strada()%>, <%=indirizzo.getCivico()%></p>
					<p><%=indirizzo.getCAP()%> <%=indirizzo.getCitta()%> (<%=indirizzo.getProvincia()%>)</p>
				</div>
				<div id="dati-fattura">
					<div class="row">
						<h3>FATTURA #</h3>
						<p><%=id %></p>
					</div>
					<div class="row">
						<h3>DATA</h3>
						<p><%=data%></p>
					</div>
				</div>
			</div>
			<div id="info-prodotti" class="column">
				<%
					ArrayList<ProdottoAcquistato> prodotti= (ArrayList<ProdottoAcquistato>) request.getAttribute("prodotti");
					double subtotale = 0.0;
					double spedizione = 0.0;
					double totaleprodotto = 0.0;
					int i;
					for(i=0;i<prodotti.size();i++)
					{
						totaleprodotto = prodotti.get(i).getPrezzo() * prodotti.get(i).getQuantita();
						subtotale += totaleprodotto;
				%>
				<div id="riga-prodotto" class="row">
					<p class="nome-prodotto"><%=prodotti.get(i).getNome()%></p>
					<p class="quantita-prodotto"><%=prodotti.get(i).getQuantita()%></p>
					<p class="prezzo-prodotto"><%=String.format("%,.2f", (prodotti.get(i).getPrezzo()))%></p>
					<p class="iva-prodotto"><%=prodotti.get(i).getIva()%></p>
					<p class="tot-prodotto"><%=String.format("%,.2f", (totaleprodotto))%></p>
				</div>
					
				<% 
					}
					if(subtotale < 50) {
						spedizione = 15.0;
					}
				%>
			</div>
			<div id="info-totale" class="row">
				<div id="parametri-costo" class="column">
					<div class="row">
						<h4>SUBTOTALE</h4>
						<p><%=String.format("%,.2f", (subtotale))%></p>
					</div>
					<div class="row">
						<h4>SPEDIZIONE</h4>
						<p><%=String.format("%,.2f", (spedizione))%></p>
					</div>
					<div class="row">
						<h3>TOTALE</h3>
						<p><%=String.format("%,.2f", (totale))%></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>