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
			<p>
				Filtri di ricerca avanzata all'interno della pagina
			</p>
		</div>
		<div class="catalog-main-panel">
			<div class="catalog-top">
			<%
				String animale=request.getParameter("animale");
				System.out.println(animale);
				switch(animale)
				{
				
				case "cane": {
			%>
                <jsp:include page="./static/templates/catalogHeadercane.html"/>
			<%
				break;
			    }
			    	
			    case "gatto": {
			 %>           
                <jsp:include page="./static/templates/catalogHeadergatto.html"/>

			 <%
			  	break;
			    }
		    	
			    case "pesci": { 
			 %>           
                <jsp:include page="./static/templates/catalogHeaderpesci.html"/>

			 <%	
			 	break;
			    }
			    
			 	case "piccoliAnimali": {
					%>
	                <jsp:include page="./static/templates/catalogHeaderpiccolianimali.html"/>
			 <%
				break;
				}
				    	
			    case "volatili" : {
			 %>
				  <jsp:include page="./static/templates/catalogHeadervolatili.html"/>
			 <%
				break;
			    }
			    
			    case "null" :{
			    }
			    break;
				}
			 %>
				
			</div>
			<div class="catalog-products">
				<c:forEach items="${prodotto}" var="prd">
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
						    	<button type="submit" name="id" value="${prd.idProdotto}" onclick="aggiungiAlCarrello(${prd.idProdotto})"><i class="fa-solid fa-circle-plus fa-2xl"></i></button>
							</div>
							<p id="${prd.idProdotto}_demo"></p>

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
</body>
</html>