<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Carrello</title>
  </head>
<body>
  <%@include file="/dynamic/header.jsp"%>
<%
	HttpSession sessione = request.getSession(false);
	if (sessione != null) 
	{	
		double prezzoTot=0;
		Carrello carrello = (Carrello) sessione.getAttribute ("carrello");
		if(carrello != null)
		{
			if(carrello.getQuantita() > 0)
			{
				//codice se carrello ha elementi
				ArrayList <Prodotto> prodotti = carrello.getProdotti();
				int i=0;
				for (; i<prodotti.size(); i++)
				{
				%>
				 
				<div class="immagine" >
				<table class="tabellaProdCarrello">
				
<tr id = "<%=prodotti.get(i).getIdProdotto()%>sezioneProdotto">
<td>
<div style="float: right;clear: right; background-color: white; border-radius:10px;">

<div  style="text-align:center">	
<div>	
  <% prezzoTot = prezzoTot + (prodotti.get(i).getPrezzo() * prodotti.get(i).getQuantita());} %>
<img class="immagineCarrello" src="Elementi/<%=prodotti.get(i).getNome()%>.jpg" alt="<%=prodotti.get(i).getNome()%>">				 
 Nome:<h2><%=prodotti.get(i).getNome()%></h2>
<br> 
 Importo:<b><%=prodotti.get(i).getPrezzo()%> &euro;</b><br>

</div>	
</div>	
</div>	
</td> 

</tr>
</table>

<div id="barra" class="immagineDesc2">
<fieldset class="fieldReg">
<h2 >TOTALE ORDINE</h2>
Numero di prodotti: <b id ="totale"><%=carrello.getQuantita()%></b><br>
<h3>Importo Totale</h3><b id="importo"> <%=prezzoTot%> &euro; </b>
<form method = "GET" action = "<%=response.encodeURL("./datiCartaAcquisto.jsp")%>"> 
<button type="submit" name="Acquista">Continua Acquisto</button>
</form>

</fieldset>
</div>
</div>	
				<%
			}
			else
			{
				%> 
				<h1 align="center"> Nessun elemento presente all'interno del carrello </h1>
				<%
			}
		}
	}
%>
				<%@include file="/dynamic/footer.jsp"%>
	
</body>
</html>