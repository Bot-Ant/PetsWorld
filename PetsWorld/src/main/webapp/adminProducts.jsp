<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Catalogo Admin</title>
</head>
<body>
	<div id="admin-page">
		<header>
			<jsp:include page="./adminHeader.jsp"/>
		</header>
		<div id="admin-page-content" class="column">
			<div id="catalog-searchbar" class="box">
				<h1>Ricerca prodotti</h1>
				<!-- sostituire con una searchbar nuova -->
				<jsp:include page="./searchbar.jsp"/>
			</div>
			<h1>Catalogo</h1>
			<div id="products-list" class="column">
				<%
					String error1 = (String)request.getAttribute("errore1");
					String error2 = (String)request.getAttribute("errore2"); 
					if(error2 != null){ 
				%>
				<div class="changes-result-message"><%=error2 %></div>
				<% 
					}
					else if(error1!=null)
					{
				%>
				<div class="changes-result-message error"><%=error1 %></div>
				<%
					}	
				%>
				
							
				<c:forEach items="${list}" var="prd">
					<div class="product-info-line">
						<div class="box row">
							<form method="get" action="ServletModificaProdotto" id="data-product-${prd.idProdotto}" class="product-data-row row">
								<div class="voice size-l">
									<label for="product-code">Id</label>
									<input type="text" id="$product-code-${prd.idProdotto}" class="input-field inactive" name="product-code" value="${prd.idProdotto}">
								</div>
								<div class="voice size-m">
									<img src="./static/images/${prd.foto}.png" alt="Foto prodotto">
								</div>
								<div class="voice size-auto">
									<label for="">Nome</label>
									<h3>${prd.nome}</h3>
								</div>
								<div class="voice size-l">
									<label for="product-price">Prezzo</label>
									<input type="text" id="${prd.idProdotto}-price" class="input-field inactive" name="product-price" value="${prd.prezzo}">
									<p id="product-price-${prd.idProdotto}-validity" class="invalid"></p>
								</div>
								<div class="voice size-l">
									<label for="">Iva</label>
									<input type="text" id="$product-tax-${prd.idProdotto}" class="input-field inactive" name="product-tax" value="${prd.iva}%">
								</div>
								<div class="voice size-xl">
									<label for="">Animale</label>
									<input type="text" id="$product-animal-${prd.idProdotto}" class="input-field inactive" name="product-animal" value="${prd.animale}">
								</div>
								<div class="voice size-l">
									<label for="product-quantity">Quantità</label>
									<input type="text" id="${prd.idProdotto}-quantity" class="input-field inactive" name="product-quantity" value="${prd.quantita}">
									<p id="product-quantity-${prd.idProdotto}-validity" class="invalid"></p>
								</div>
								<div id="edit-section-${prd.idProdotto}" class="voice">
									<input type="button" id="edit-button-${prd.idProdotto}" class="active-edit-button" onclick="editProductData('${prd.idProdotto}')" value="Modifica">
								</div>	
							</form>
							<form method="get" action="ServletRimozioneProdotto" id="data-product-id_prodotto" class="delete row">
								<div class="voice last">
									<button class="active-accent-button" name="product-code" value="${prd.idProdotto}">Elimina</button>
								</div>	
							</form>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="./static/scripts/regex.js"></script>
	<script type="text/javascript" src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-catalog-link");
	</script>
</body>
</html>