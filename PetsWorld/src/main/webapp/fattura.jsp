<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*, model.beans.* , java.lang.*, java.util.ArrayList"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<%
			HttpSession sessione = request.getSession(false);
			Utente user=(Utente) sessione.getAttribute("utente");
			String data=(String) request.getAttribute("data_ordine");
			Double totale=(Double) request.getAttribute("totale");
			Indirizzo indirizzo= (Indirizzo) request.getAttribute("indirizzo");
			int id= (int) request.getAttribute("id_ordine");
		%>
			
			<h3>
			Nome:<%=user.getNome()%>
			Cognome: <%=user.getCognome()%>
			ID ordine:<%=id %>
			Totale ordine:<%=totale%>
			Data ordine=<%=data%>
			Indirizzo città:<%=indirizzo.getCitta()%>			
			Indirizzo strada:<%=indirizzo.getNome_strada()%>
			Indirizzo civico:<%=indirizzo.getCivico()%>
			Indirizzo CAP:<%=indirizzo.getCAP()%>
			Indirizzo provincia:<%=indirizzo.getProvincia()%>
			</h3>
						
		<%
			ArrayList<ProdottoAcquistato> prodotti= (ArrayList<ProdottoAcquistato>) request.getAttribute("prodotti");
			int i;
			for(i=0;i<prodotti.size();i++)
			{
		%>
		
				<h2><%=prodotti.get(i).getQuantita()%></h2>
				<h2><%=prodotti.get(i).getNome()%></h2>
				<h2><%=prodotti.get(i).getFoto()%></h2>
				<h2><%=prodotti.get(i).getPrezzo()%></h2>
				<h2><%=prodotti.get(i).getIva()%></h2>
		<% 
			}
		%>
</body>
</html>