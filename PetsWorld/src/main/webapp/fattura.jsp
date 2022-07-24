<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*, model.beans.* , java.lang.*, java.util.ArrayList"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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
			<div id="intestazione">
				<img src="./static/images/website-logo-icon.svg" alt="Logo PetsWorld">
				<div id="info-venditore">
					<p>Via Sansone 54</p>
					<p>84084 Fisciano (SA)</p>
					<p>CF: MRCRSS70C21F839A</p>
					<p>P.IVA: 03398567403</p>
					<p>Tekefono: +39 327 362 9020</p>
				</div>
			</div>
			<hr>
			<div id="info-fattura">
				<div class="dati-utente">
					<h3>DESTINATARIO</h3>
					<p><%=user.getNome()%> <%=user.getCognome()%></p>
					<p><%=indirizzo.getNome_strada()%>, <%=indirizzo.getCivico()%></p>
					<p><%=indirizzo.getCAP()%> <%=indirizzo.getCitta()%> (<%=indirizzo.getProvincia()%>)</p>
				</div>
				<div class="dati-fattura">
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
			<div id="info-prodotti">
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
				<div class="riga-prodotto">
					<p><%=prodotti.get(i).getNome()%></p>
					<p><%=prodotti.get(i).getQuantita()%></p>
					<p><%=String.format("%,.2f", (prodotti.get(i).getPrezzo()))%></p>
					<p><%=prodotti.get(i).getIva()%></p>
					<p><%=String.format("%,.2f", (totaleprodotto))%></p>
				</div>
					
				<% 
					}
					if(subtotale < 50) {
						spedizione = 15.0;
					}
				%>
			</div>
			<div id="info-totale">
				<div id="parametri-costo">
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
				String.format("%,.2f", (costoTotale))
			</div>
		</div>
	</div>
</body>
</html>