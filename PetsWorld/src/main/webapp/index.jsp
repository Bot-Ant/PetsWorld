<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>PetsWorld</title>
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

	<div class="home-content">
		<!-- Banner with news and sales -->
		<div class="banner">
	
		</div>
		<!-- Selection of the best products of the website -->
		<div class="best-products">
			<!-- Section of products selected -->
			<div class="products-section">
				<!-- Title of the section -->
				<h1>I prodotti più venduti</h1>
				<!-- Products to show in the row -->
				<div class="products-row">
					<button class="products-slider"><i class="fa-solid fa-circle-chevron-left fa-2x"></i></button>
					<c:forEach items="${list}" var="prd">
						<div class="product-box">
							<div class="image-container">
								<img src="./static/images/${prd.foto}" alt="immagine prodotto">
							</div>
							<h3 class="name">${prd.nome}</h3>
							<div class="text-container">
								<h2 class="price">€${prd.prezzo}</h2>
								<div class="add-to-cart">
								<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrello(${prd.idProdotto})"><i class="fa-solid fa-circle-plus fa-3x"></i></button>
								</div>
							</div>
						</div>
					</c:forEach>
					<button class="products-slider"><i class="fa-solid fa-circle-chevron-right fa-2x"></i></button>
				</div>
			</div>
			<div class="products-section">
				<h1>Le novità PetsWorld</h1>
				<div class="products-row">
					<button class="products-slider"><i class="fa-solid fa-circle-chevron-left fa-2x"></i></button>
					<c:forEach items="${list}" var="prd">
						<div class="product-box">
							<div class="image-container">
								<img src="./static/images/${prd.foto}" alt="immagine prodotto">
							</div>
							<h3 class="name">${prd.nome}</h3>
							<div class="text-container">
								<h2 class="price">€${prd.prezzo}</h2>
								<div class="add-to-cart">
								  <button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrello(${prd.idProdotto})"><i class="fa-solid fa-circle-plus fa-2xl"></i></button>
								</div>
							</div>
						</div>
					</c:forEach>
					<button class="products-slider"><i class="fa-solid fa-circle-chevron-right fa-2x"></i></button>
				</div>
			</div>
			<div class="products-section">
				<h1>I prodotti più consigliati</h1>
				<div class="products-row">
					<button class="products-slider"><i class="fa-solid fa-circle-chevron-left fa-2x"></i></button>
					<c:forEach items="${list}" var="prd">
						<div class="product-box">
							<div class="image-container">
								<img src="./static/images/${prd.foto}" alt="immagine prodotto">
							</div>
							<h3 class="name">${prd.nome}</h3>
							<div class="text-container">
								<h2 class="price">€${prd.prezzo}</h2>
								<div class="add-to-cart">
								  <button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrello(${prd.idProdotto})"><i class="fa-solid fa-circle-plus fa-2xl"></i></button>
								</div>
							</div>
						</div>
					</c:forEach>
					<button class="products-slider"><i class="fa-solid fa-circle-chevron-right fa-2x"></i></button>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
	
	<%
		String url = response.encodeURL("ServletCarrello");
	%>
<script type="text/javascript">
	function aggiungiAlCarrello(id)
	{
			    var url = '<%=url%>' + "?id=" + encodeURIComponent(id); //metto url passando come parametro id del prodotto
				//var url = 'ServletCarrello?id=' + encodeURIComponent(id);
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = //alla risposta della servlet
					function() //aumenta di 1 unità il carrello
					{
						if(xhr.readyState == 4 && xhr.status == 200)
						{
							var response = JSON.parse(xhr.responseText); //stringa che contiene la risposta da parte del server
							document.getElementById("quantita_carrello").innerHTML = response.number;
						}
					}
				xhr.open("GET",url,true);
				xhr.send(null);
	}
</script>

</body>
</html>