<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Header</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" type="image/png" href="./static/images/website-logo-icon.png">
	<link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
	<link rel="stylesheet" href="./static/styles/searchbar.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
	<link rel="stylesheet" href="./static/styles/form.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
	<script src="https://kit.fontawesome.com/d2fb96c0f6.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Extended version of the header, visible when the window is large -->
	<div id="large-header" class="standard-header">
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
			<div id="header-buttons">
				<%
					Utente utente = new Utente();
					Carrello carrello= new Carrello();
					String urlcarrello = response.encodeURL("cart.jsp");
					HttpSession sessione = request.getSession(false);
					if (sessione != null)
					{
						utente = (Utente) sessione.getAttribute("utente");
						carrello = (Carrello) sessione.getAttribute ("carrello");
						if(carrello !=null)
						{	
							if(utente == null)
							{
				%>

				<a id="cart-icon-link" href="<%=urlcarrello%>">
					<i class="fa badge fa-lg" value="<%=carrello.getQuantita()%>">
						<i class="fa-solid fa-cart-shopping fa-xl"></i>
					</i>
				</a>
				<a title="login" Style="transition:0.5s;" href="<%=response.encodeURL("login.jsp")%>"><h3>Accedi <i class="fa-solid fa-user fa-xl"></i></h3></a>
					
				<%			
							}
							else
							{
								if(utente.isRuolo() == 0) 
								{
									String urlutente = response.encodeURL("userAccount.jsp");
				%>

				<a id="cart-icon-link" href="<%=urlcarrello%>">
					<i class="fa badge fa-lg" value="<%=carrello.getQuantita()%>">
						<i class="fa-solid fa-cart-shopping fa-xl"></i>
					</i>
				</a>
				<a href="<%=urlutente%>"><h3 class="active">Account <i class="fa-solid fa-user fa-xl"></i></h3></a>

				<%	
								}
								else if(utente.isRuolo() == 1)
								{
									String urladmin = response.encodeURL("adminAccount.jsp");
				%>

				<a href="<%=urladmin%>"><h3 class="active">Account <i class="fa-solid fa-user fa-xl"></i></h3></a>
				
				<%
								}
							}
						}
					}
				%>
				
			</div> 
		</div>
		<!-- Elements in the bottom bar of the header -->
		<div class="bottom-bar">
			<jsp:include page="./navbar.jsp"/>
		</div>
	</div>
	
	<!-- Condensed version of the header, visible when the window is small -->
	<div id="small-header" class="standard-header" >
		<div class="top-bar">
			<div class="bar-hamburger">
				<jsp:include page="./navbar.jsp"/>
			</div>
			<div class="logo-box">
				<%url1 = response.encodeURL("index.jsp");%>
				<a href="<%=url1%>">
					<img class="logo" src="./static/images/petsworld-logo.svg" alt="logo" name="home">
				</a>
			</div>
			<div id="header-buttons">
				<%
					if (sessione != null)
					{
						utente = (Utente) sessione.getAttribute("utente");
						carrello = (Carrello) sessione.getAttribute ("carrello");
						if(carrello !=null)
						{	
							if(utente == null)
							{
				%>

				<a id="cart-icon-link" href="<%=urlcarrello%>">
					<i class="fa badge fa-lg" value="<%=carrello.getQuantita()%>">
						<i class="fa-solid fa-cart-shopping fa-xl"></i>
					</i>
				</a>
				<a title="login" Style="transition:0.5s;" href="<%=response.encodeURL("login.jsp")%>"><h3><i class="fa-solid fa-user fa-xl"></i></h3></a>
					
				<%			
							}
							else
							{
								if(utente.isRuolo() == 0) 
								{
									String urlutente = response.encodeURL("userAccount.jsp");
				%>

				<a id="cart-icon-link" href="<%=urlcarrello%>">
					<i class="fa badge fa-lg" value="<%=carrello.getQuantita()%>">
						<i class="fa-solid fa-cart-shopping fa-xl"></i>
					</i>
				</a>
				<a href="<%=urlutente%>"><h3 class="active"><i class="fa-solid fa-user fa-xl"></i></h3></a>

				<%	
								}
								else if(utente.isRuolo() == 1)
								{
									String urladmin = response.encodeURL("adminAccount.jsp");
				%>

				<a href="<%=urladmin%>"><h3 class="active"><i class="fa-solid fa-user fa-xl"></i></h3></a>
				
				<%
								}
							}
						}
					}
				%>
				
			</div> 
		</div>
		<div class="bottom-bar">
			<jsp:include page="./searchbar.jsp"/>
		</div>
	</div>
	<script type="text/javascript" src="./static/scripts/header.js"></script>
</body>
</html>