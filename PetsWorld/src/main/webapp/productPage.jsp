<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Pagina Prodotto</title>
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
	
	<%
		Prodotto prodotto= new Prodotto();
		prodotto= (Prodotto) request.getAttribute("prodotto");
	%>
	
	<div class="product-page-content">
		<div class="product-top-row">
			<div class="product-images">
				<img src="./static/images/<%=prodotto.getFoto() %>" alt="Immagine Prodotto">
			</div>
			<form class="product-form" action="">
				<h1><%=prodotto.getNome()%></h1>				
				<p>
					<%=prodotto.getPrezzo()%>&euro;
				</p>
				<button>Aggiungi al carrello</button>
			</form>
		</div>
		<div class="product-description">
			<p>
					<%=prodotto.getDescrizione()%>
			</p>
		</div>
		<div class="product-reviews">
			
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>