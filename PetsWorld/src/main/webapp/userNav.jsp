<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<ul class="user-nav">
		    <li class="link" id="user-petsworld">
		        <i class="fa-solid fa-user"></i>
		        <a href="./userAccount.jsp">My petsworld</a>
		    </li>
		    <li><h2>Gestione account</h2></li>
		    <li class="link" id="user-orders">
		        <i class="fa-solid fa-receipt"></i>
		         <%String url = response.encodeURL("ServletVisualizzazioneOrdini");%>
		        <a href="<%=url%>">Ordini</a>
		    </li>
		    <li class="link" id="user-data">
		        <i class="fa-solid fa-id-card"></i>
		        <a href="./userData.jsp">Dati personali</a>
		    </li>
		    <li class="link" id="user-addresses">
		        <i class="fa-solid fa-map"></i>
		        <a href="./userAddresses.jsp">Indirizzi</a>
		    </li>
		    <li class="link" id="user-payments">
		        <i class="fa-solid fa-credit-card"></i>
		        <a href="./userPayMethods.jsp">Metodi di pagamento</a>
		    </li>
		    <li><h2>Gestione animali</h2></li>
		    <li class="link" id="user-pets">
		        <i class="fa-solid fa-paw"></i>
		        <a href="#"> Animali adottati</a>
		    </li>
		    <hr>
		    <li class="link" id="user-disconnect">
		        <i class="fa-solid fa-arrow-right-from-bracket"></i>
		        <a class="disconnect" href="LogoutServlet">Disconnettiti</a>
		    </li>
		</ul>
</body>
</html>