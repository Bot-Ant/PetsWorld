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
			<div id="products-list">
							<%
								String error2 = (String)request.getAttribute("errore2"); 
								String error1 = (String)request.getAttribute("errore1");
								if(error2 != null){ 
							%>
								<div align="center" Style="color:red"><%=error2 %></div>
							<% 
								}
								else if(error1!=null)
								{
							%>
								<div align="center" Style="color:red"><%=error1 %></div>
							<%
								}	
							%>
							
				<c:forEach items="${list}" var="prd">
					<div class="product-info-line">
						<div class="box">
							<form method="get" action="ServletModificaProdotto">
							<ul id="data-product-id_prodotto" class="row">
								<li class="size-l">
									<input type="text" id="id-product-code" class="input-field inactive" name="product-code" value="${prd.idProdotto}">
								</li>
								<li class="voice size-m">
									<img src="./static/images/${prd.foto}.png" alt="Foto prodotto">
								</li>
								<li class="size-auto">
									<h3>${prd.nome}</h3>
								</li>
								<li class="voice size-m">
									<input type="text" id="id-price" class="input-field inactive" name="product-price" value="${prd.prezzo}">
								</li>
								<li class="voice size-s">
									<p>iva=${prd.iva}%</p>
								</li>
								<li class="voice size-xl">
									<p>${prd.animale}</p>
								</li>
								<li class="voice size-m">
									<input type="text" id="id-quantity" class="input-field inactive" name="product-quantity" value="${prd.quantita}">
								</li>
								<li id="edit-section-id_prodotto" class="voice">
									<input type="button" id="edit-button-id_prodotto" class="active-edit-button" onclick="editProductData('id-product-code')" value="Modifica">
								</li>
							</ul>			
							</form>
							<form method="get" action="ServletRimozioneProdotto">
								<ul id="data-product-id_prodotto" class="row">
									<li class="voice last">
										<button class="active-accent-button" name="product-code" value="${prd.idProdotto}">Elimina</button>
									</li>
								</ul>
							</form>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<script src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-catalog-link");
	</script>
</body>
</html>