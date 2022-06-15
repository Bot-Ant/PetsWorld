<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Header</title>
	<link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
	<script src="https://kit.fontawesome.com/d2fb96c0f6.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Extended version of the header, visible when the window is large -->
	<div id="large-header">
		<!-- Elements in the top bar of the header -->
		<div class="top-bar">
			<div class="logo-box">
				<%String url1 = response.encodeURL("index.jsp");%>
				<a href="<%=url1%>">
					<img class="logo" src="./static/images/petsworld-logo.svg" alt="logo" name="home">
				</a>
			</div>
			<div class="bar-center">
				<jsp:include page="./searchbar.jsp"/>
			</div>
			
			<%
				Utente utente = new Utente();
				HttpSession sessione = request.getSession(false);
				   if (sessione != null)
				   {
						utente = (Utente) sessione.getAttribute("utente");
						if(utente != null)
						{
			%>
			
			<div class="header-buttons">
				<p>
				<%String url2 = response.encodeURL("userAccount.jsp");%>	
				<a href="<%=url2%>"><i class="fa-solid fa-user fa-xl"></i></a>
				</p>
			<%
			Carrello carrello = (Carrello) sessione.getAttribute ("carrello");
			if(carrello != null)
			{ 
			%>
				<%String url3 = response.encodeURL("cart.jsp");%>	
				<p class="sposta"><a href="LogoutServlet"><i class="fa fa-sign-out fa-xl"></i></a>
				<p><a href="<%=url3%>"><i class="fa-solid fa-cart-shopping fa-xl"></i></a></p>
				<p id="quantita_carrello"><%=carrello.getQuantita() %></p>
			</div>
			<%
			}
						}
	 					else 
	 						{
			 %>
		<div Style="margin-right:8px">
		 	<p class="logRec" align="right" >
		 	<a  class="link" title="login" Style="text-decoration: none; transition:0.5s;" href="<%=response.encodeURL("login.jsp")%>"> LOGIN</a> |
		 	<a  class="link" title="registrazione" Style="text-decoration: none; transition:0.5s" href="<%=response.encodeURL("registrazione.jsp")%>" >SIGNUP</a>
			</p>
		</div> 
				
		<%	
							}
				}
		%>
		
	</div>
		<!-- Elements in the bottom bar of the header -->
		<div class="bottom-bar">
			<jsp:include page="./navbar.jsp"/>
		</div>
	</div>
	<!-- Condensed version of the header, visible when the window is small -->
	<div id="small-header">
		<div class="top-bar">
			
		</div>
		<div class="bottom-bar">
			
		</div>
	</div>
</body>
</html>