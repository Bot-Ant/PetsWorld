<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Catalogo</title>
	<link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
</head>
<body>
	<script type="text/javascript" src="./static/scripts/cart.js"></script>
	
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div class="catalog-content">
		<div class="filters-panel">
			<div class="wrapper">
				<h2>Prezzo</h2>
				<div class="price-input">
				  <div class="field">
					<span>Min</span>
					<input type="number" id="price-filter-min" class="input-min input-field" value="0">
				  </div>
				  <div class="separator">-</div>
				  <div class="field">
					<span>Max</span>
					<input type="number" id="price-filter-max" class="input-max input-field" value="2000">
				  </div>
				</div>
				<div class="slider">
				  <div class="progress"></div>
				</div>
				<div class="range-input">
				  <input type="range" class="range-min" min="0" max="2000" value="0" step="100">
				  <input type="range" class="range-max" min="0" max="2000" value="2000" step="100">
				</div>
			  </div>
			<div id="filter-categories">
				<h2 class="category-name">Categorie</h2>
				<select class="category-animal" id="category-animal">
					<option value="cane">Cane</option>
					<option value="gatto">Gatto</option>
					<option value="pesci">Pesci</option>
					<option value="volatili">Volatili</option>
					<option value="piccolianimali">Piccoli animali</option>
				</select>
				<select class="category-voice" name="category-animal" id="category-animal">
					<option value="alimenti">Alimenti</option>
					<option value="igiene">Igiene</option>
					<option value="accessori">Accessori</option>
					<option value="abbigliamento">Abbigliamento</option>
					<option value="giochi">Giochi</option>
					<option value="acquari">Acquari</option>
					<option value="decorazioni">Decorazioni</option>
					<option value="gabbiette">Gabbiette</option>
				</select>
			</div>
			<button class="active-basic-button">Filtra risultati</button>
		</div>
		<div class="catalog-main-panel">
			<div class="catalog-top">
			<%
				if(request.getParameter("animale")==null)
				{
					String nome= request.getParameter("search");

			%>
			
			<h1>Risultati per: <%=nome%></h1>
			
			<% 
				} else
				{
				String animale=request.getParameter("animale");
				switch(animale)
				{
				
				case "cane": {
			%>
                <jsp:include page="./static/templates/catalogHeader_cane.html"/>
			<%
				break;
			    }
			    	
			    case "gatto": {
			 %>           
                <jsp:include page="./static/templates/catalogHeader_gatto.html"/>

			 <%
			  	break;
			    }
		    	
			    case "pesci": { 
			 %>           
                <jsp:include page="./static/templates/catalogHeader_pesci.html"/>

			 <%	
			 	break;
			    }
			    
			 	case "piccoliAnimali": {
					%>
	                <jsp:include page="./static/templates/catalogHeader_piccolianimali.html"/>
			 <%
				break;
				}
				    	
			    case "volatili" : {
			 %>
				  <jsp:include page="./static/templates/catalogHeader_volatili.html"/>
			 <%
				break;
			    }
			    
			    default : {
			  %>
					  <jsp:include page="./static/templates/catalogHeader_volatili.html"/>
			  <%
			    }
				}
				}
			 %>
				
			</div>
			<div class="catalog-products">
				<c:forEach items="${prodotto}" var="prd">
					<div class="product-container">
						<div class="product-box">
							<form action="<%=response.encodeURL("ServletCercaProdotto")%>" method="get">
								<button class="product-link" type="submit" name="id" value="${prd.idProdotto}">
									<div class="image-container">
										<img src="./static/images/${prd.foto}.png" alt="immagine prodotto">
										<p class="out-of-stock" id="${prd.idProdotto}_demo_1">TERMINATO</p>
									</div>
									<h3 class="name">${prd.nome}</h3>
									<div class="text-container">
										<h2 class="price">€${String.format("%,.2f", (prd.prezzo))}</h2>
									</div>
								</button>
							</form>
							<div class="add-to-cart">
								<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrello(${prd.idProdotto})"><i class="fa-solid fa-circle-plus fa-3x"></i></button>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
	<script type="text/javascript" src="./static/scripts/slider.js"></script>
</body>
</html>