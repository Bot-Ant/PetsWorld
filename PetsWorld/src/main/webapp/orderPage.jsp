<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ordine</title>
</head>
<body>
		<%
			HttpSession sessione=request.getSession(true);
		if (sessione != null)
		{
			Utente utente = (Utente) sessione.getAttribute("utente");
			Carrello carrello = (Carrello) sessione.getAttribute ("carrello");
			ArrayList <Prodotto> prodotti = carrello.getProdotti();
			double costoSpedizione = 0;
		%>
		
	<div id="order-content">	
		<form id="data-panel" method="GET" action = "ServletOrdine" >
			<header>
				<!-- Standard header -->
				<jsp:include page="./formHeader.jsp"/>
			</header>
			<div class="box" id="shipping-info-box">
				<h1>Spedizione</h1>
				<div class="row">
					<div class="field">
						<label for="saved-addresses">Scegli tra i salvati</label>
						<select id="saved-addresses" class="input-field" name="saved-addresses">
							<option value="" selected>Scegli indirizzo</option>
						
						<%if (utente != null){ 
			               for(Indirizzo u : utente.getIndirizziSpedizione()){ %>
			               	<option value="<%=u.getIdUtente()%>"> <%= u.getNome_strada() +", "+u.getCivico()+" "+", "+u.getCitta()+", "+u.getCAP()+", "+u.getProvincia()%></option>
              			<%	}    
						}
						%>
						</select>
					</div>
				</div>
				
				<div class="row">
					<input type="button" id="confirm-shipping" class="active-basic-button" value="Conferma indirizzo" onclick="verifyAddressInfo()">
				</div>
			</div>
			<div id="empty-payment-method" class="box">
				<h1>Pagamento</h1>
			</div>
			<div class="box" id="payment-method-box">
				<h1>Pagamento</h1>
				<div class="row">
					<div class="field">
						<label for="saved-payments">Scegli tra i salvati</label>
						<select id="saved-payments" class="input-field" name="saved-addresses">
							<option value="" selected>Scegli metodo di pagamento</option>
						
						<%if (utente != null){ 
			               for(MetodoPagamento u : utente.getMetodiPagamento()){ %>
			               	<option value="<%=u.getIdUtente()%>"> <%= u.getNumero() +" "+u.getProprietario()+" "+" "+u.getMeseScadenza()+" "+u.getAnnoScadenza()+" "+u.getCvv()%></option>
              			<%	}    
						}
						%>
						</select>
					</div>
				</div>
				
				<div class="row">
					<input type="button" id="confirm-payment" class="active-basic-button" value="Conferma metodo" onclick="verifyPaymentMethodInfo()">
				</div>
			</div>
			<div id="empty-confirm-order" class="box">
				<h1>Conferma ordine</h1>
			</div>
			<div class="box" id="confirm-order-box">
				<h1>Conferma ordine</h1>
				<div class="row">
					<button class="active-accent-button" id="confirm-order">Acquista</button>
				</div>
			</div>
		</form>
		<div id="summary-panel">
			<h1>Sommario</h1>
			<div class="loop">
				<% 	
					for (int i=0; i<prodotti.size(); i++)
					{
				%>
				<div class="row">
					<img src="./static/images/<%=prodotti.get(i).getFoto()%>.png" alt="foto prodotto">
					<p class="list-product-name"><%=prodotti.get(i).getNome()%></p>
					<p class="last-list-voice"><%=String.format("€%,.2f", (prodotti.get(i).getPrezzo()))%></p>
					<p class="last-list-voice"><%=prodotti.get(i).getQuantita()%></p>
				</div>	
				<% 	
					}
				%>
			</div>
			<div id="total">
				<div class="row">
					<h3>Subtotale</h3>
					<h3 class="price"><%=String.format("€%,.2f", (carrello.getPrezzoTotale()))%></h3>
				</div>
				<div class="row">
					<h3>Spedizione</h3>
					<%
						if(carrello.getPrezzoTotale()<50)
						{
							costoSpedizione = 15;
						}
					%>
					<h3 class="price"><%=String.format("€%,.2f", (costoSpedizione))%></h3>
				</div>
				<div class="span">
					<div class="row">
						<h2>Totale</h2>
						<%
							double costoTotale= carrello.getPrezzoTotale()+costoSpedizione;
						%>
						<h2 class="price"><%=String.format("€%,.2f", (costoTotale))%></h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
			}
	%>
	<script type="text/javascript" src="./static/scripts/regex.js"></script>
  	<script type="text/javascript" src="./static/scripts/order.js"></script>
</body>
</html>