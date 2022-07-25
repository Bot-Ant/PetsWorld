<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Catalogo</title>
</head>
<body>
	<script type="text/javascript" src="./static/scripts/cart.js"></script>
	
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div class="catalog-content">
		<div id="filters-panel" class="filters-panel">
			<button id="filter-section-title" class="filter-section-title active-basic-button" onclick="showFilters()">Filtri ricerca</button>
			<button id="filter-section-title-dummy" class="filter-section-title">Filtri ricerca</button>
		<form id="form-filtri" class="nav-links" action="ServletSearch" method="post">
			<div class="wrapper">
				<h2>Prezzo</h2>
				<div class="price-input">
				  <div class="field">
					<span>Min</span>
					<input type="number" id="price-filter-min" name="prezMin" class="input-min input-field" value="0">
				  </div>
				  <div class="separator">-</div>
				  <div class="field">
					<span>Max</span>
					<input type="number" id="price-filter-max" name="prezMax" class="input-max input-field" value="2000">
				  </div>
				</div>
				<div class="slider">
				  <div class="progress"></div>
				</div>
				<div class="range-input">
				  <input type="range" class="range-min"  min="0" max="2000" value="0" step="100">
				  <input type="range" class="range-max"  min="0" max="2000" value="2000" step="100">
				</div>
			  </div>
			<div id="filter-categories">
				<h2 class="category-name">Categorie</h2>

							<legend><b>Animale</b></legend>
							<div class="row">
								<input type="radio" id="cane" name="animale" value="cane">
								<label for="cane">Cane</label>
							</div>
							<div class="row">
								<input type="radio" id="gatto" name="animale" value="gatto">
								<label for="gatto">Gatto</label>
							</div>
							<div class="row">
								<input type="radio" id="pesci" name="animale" value="pesci">
								<label for="pesci">Pesci</label>
							</div>
							<div class="row">
								<input type="radio" id="volatili" name="animale" value="volatili">
								<label for="volatili">Volatili</label>
							</div>
							<div class="row">
								<input type="radio" id="piccolianimali" name="animale" value="piccolianimali">
								<label for="piccolianimali">Piccoli animali</label>
							</div>
					
							<legend><b>Tipo</b></legend>
							<div class="row">
								<input type="radio" id="alimenti" name="categoria" value="alimenti">
								<label for="alimenti">Alimenti</label>
							</div>
							<div class="row">
								<input type="radio" id="cibo-umido" name="categoria" value="cibo umido">
								<label for="cibo-umido">Cibo umido</label>
							</div>
							<div class="row">
								<input type="radio" id="crocchette" name="categoria" value="crocchette">
								<label for="crocchette">Crocchette</label>
							</div>
							<div class="row">
								<input type="radio" id="salute" name="categoria" value="salute">
								<label for="salute">Salute</label>
							</div>
							<div class="row">
								<input type="radio" id="tappetini" name="categoria" value="tappetini assorbenti">
								<label for="tappetini">Tappetini assorbenti</label>
							</div>
							<div class="row">
								<input type="radio" id="antiparassitario-spot-on" name="categoria" value="antiparassitario spot-on">
								<label for="antiparassitario-spot-on">Antiparassitario spot-on</label>
							</div>
							<div class="row">
								<input type="radio" id="antiparassitario-collare" name="categoria" value="antiparassitario collare">
								<label for="antiparassitario-collare">Antiparassitario collare</label>
							</div>
							<div class="row">
								<input type="radio" id="accessori" name="categoria" value="accessori">
								<label for="accessori">Accessori</label>
							</div>
							<div class="row">
								<input type="radio" id="guinzagli" name="categoria" value="guinzagli">
								<label for="guinzagli">Guinzagli</label>
							</div>
							<div class="row">
								<input type="radio" id="cucce" name="categoria" value="cucce">
								<label for="cucce">Cucce</label>
							</div>
							<div class="row">
								<input type="radio" id="ciotole" name="categoria" value="ciotole">
								<label for="ciotole">Ciotole</label>
							</div>
							<div class="row">
								<input type="radio" id="giochi" name="categoria" value="giochi">
								<label for="giochi">Giochi</label>
							</div>
							<div class="row">
								<input type="radio" id="intrattenimento" name="categoria" value="intrattenimento">
								<label for="intrattenimento">Intrattenimento</label>
							</div>
			</div>
			<button class="active-accent-button">Filtra risultati</button>
			</form>
		</div>
		<div class="catalog-main-panel">
			<div class="catalog-top">
			<% 
			if(request.getParameter("animale")!=null && request.getParameter("categoria")!=null )
				{
					String nome = request.getParameter("animale");
					String prodotto = request.getParameter("categoria");
					%>
					<h1>Risultati per: <%=nome%> <%=prodotto %></h1>
					<% 
				}
				else if(request.getParameter("animale")==null && request.getParameter("search")!= null)
				{
					String nome= request.getParameter("search");
					%>
					
					<h1>Risultati per: <%=nome%></h1>
					
					<% 
				}
				else if(request.getParameter("categoria")!=null){
						
					String nome= request.getParameter("categoria");
					%>
					
					<h1>Risultati per: <%=nome%></h1>
					
					<% 
				}else if(request.getParameter("animale")==null && request.getParameter("categoria")==null && request.getParameter("search")== null){
					%>
					<h1> Risultati Per Prezzo </h1>
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
							<!-- FUNZIONE JAVASCRIPT PER AGGIUNGERE AL CARRELLO PRODOTTI DAL CATALOGO-->
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
	<script type="text/javascript" src="./static/scripts/catalog.js"></script>
</body>
</html>