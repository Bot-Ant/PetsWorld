<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Header</title>
	<link rel="icon" type="image/png" href="./static/images/website-logo-icon.png">
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
			<div class="header-buttons">
				<%
					Utente utente = new Utente();
					HttpSession sessione = request.getSession(false);
					   if (sessione != null)
					   {
							utente = (Utente) sessione.getAttribute("utente");
							if(utente == null)
							{
				%>
				<h3><a title="login" Style="transition:0.5s;" href="<%=response.encodeURL("login.jsp")%>">Accedi <i class="fa-solid fa-user fa-xl"></i></a></h3>
				<%			
							}
							else
							{
								if(utente.isRuolo() == 0) {
									String urlutente = response.encodeURL("userAccount.jsp");
									String urlcarrello = response.encodeURL("cart.jsp");

									Carrello carrello = (Carrello) sessione.getAttribute ("carrello");
									if(carrello != null)
									{
				%>
				<a href="<%=urlcarrello%>">
					<i class="fa-solid fa-cart-shopping fa-xl"></i>
					<p id="quantita_carrello"><%=carrello.getQuantita() %></p>
				</a>
				<%
									}
				%>
				<h3><a href="<%=urlutente%>">Account <i class="fa-solid fa-user fa-xl"></i></a></h3>
				<%	
								}
								else if(utente.isRuolo() == 1)
								{
									String urladmin = response.encodeURL("adminAccount.jsp");
				%>
				<h3><a href="<%=urladmin%>">Account <i class="fa-solid fa-user fa-xl"></i></a></h3>
				<%
								}
				%>
				<a href="LogoutServlet"><i class="fa fa-sign-out fa-xl"></i></a>
				<%
							}
						}
				%>
			</div> 
		</div>
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