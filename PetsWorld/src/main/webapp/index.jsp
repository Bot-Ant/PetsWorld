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
	<link rel="stylesheet" href="./static/styles/banner.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js" ></script>
	<link href="https://fonts.googleapis.com/css2?family=Original+Surfer&display=swap" rel="stylesheet">
	
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>

	<div class="home-content">
		<!-- Banner with news and sales -->
		
		 
	<div class="banner">
		<div class="botton">
            <i class="fas fa-arrow-left" id="prevbtn"></i>
            <i class="fas fa-arrow-right" id="nextbtn"></i>
            	<div class="pre-botton">
					<c:forEach items="${banner}" var="ban">
					<img src="./static/images/${ban.immagine}" alt="immagine prodotto">
					</c:forEach>
				<script src="./static/scripts/jsbanner.js" ></script>
				</div>
		</div>
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
								<form action="<%=response.encodeURL("ServletCercaProdotto")%>" method="get"> 
									<button type="submit" name="id" value="${prd.idProdotto}">
										<img src="./static/images/${prd.foto}" alt="immagine prodotto">
									</button>
								</form>
							</div>
							<h3 class="name">${prd.nome}</h3>
							<div class="text-container">
								<h2 class="price">€${prd.prezzo}</h2>
								<div class="add-to-cart">
								<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrello(${prd.idProdotto}, 1)"><i class="fa-solid fa-circle-plus fa-3x"></i></button>
								</div>
							</div>
							<p id="${prd.idProdotto}_demo_1"></p>
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
								<form action="<%=response.encodeURL("ServletCercaProdotto")%>" method="get"> 
									<button type="submit" name="id" value="${prd.idProdotto}">
										<img src="./static/images/${prd.foto}" alt="immagine prodotto">
									</button>
								</form>							</div>
							<h3 class="name">${prd.nome}</h3>
							<div class="text-container">
								<h2 class="price">€${prd.prezzo}</h2>
								<div class="add-to-cart">
								<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrello(${prd.idProdotto}, 2)"><i class="fa-solid fa-circle-plus fa-2xl"></i></button>
								</div>
							</div>
							<p id="${prd.idProdotto}_demo_2"></p>
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
								<form action="<%=response.encodeURL("ServletCercaProdotto")%>" method="get"> 
									<button type="submit" name="id" value="${prd.idProdotto}">
										<img src="./static/images/${prd.foto}" alt="immagine prodotto">
									</button>
								</form>							</div>
							<h3 class="name">${prd.nome}</h3>
							<div class="text-container">
								<h2 class="price">€${prd.prezzo}</h2>
								<div class="add-to-cart">
								<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrello(${prd.idProdotto},3)"><i class="fa-solid fa-circle-plus fa-2xl"></i></button>
								</div>
							</div>
							<p id="${prd.idProdotto}_demo_3"></p>
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
	function aggiungiAlCarrello(id, sezione)
	{
			    var url = '<%=url%>' + "?id=" + encodeURIComponent(id); //metto url passando come parametro id del prodotto e sezione
				//var url = 'ServletCarrello?id=' + encodeURIComponent(id);
				var xhr = new XMLHttpRequest();
				xhr.onreadystatechange = //alla risposta della servlet
					function() //aumenta di 1 unità il carrello
					{
						if(xhr.readyState == 4 && xhr.status == 200)
						{
							var response = JSON.parse(xhr.responseText); //stringa che contiene la risposta da parte del server
							document.getElementById("quantita_carrello").innerHTML = response.number;
							var stringa=response.riferimento;
							if(response.esaurimento==1)
								{
									if(sezione==1)
										{
											document.getElementById(stringa+"_1").innerHTML = "Esaurimento scorte nel magazzino";
										}
									if(sezione==2)
										{
											document.getElementById(stringa+"_2").innerHTML = "Esaurimento scorte nel magazzino";
										}
									if(sezione==3)
										{
											document.getElementById(stringa+"_3").innerHTML = "Esaurimento scorte nel magazzino";
										}
								}
						}
					}
				xhr.open("GET",url,true);
				xhr.send(null);
	}
	
</script>

</body>
</html>