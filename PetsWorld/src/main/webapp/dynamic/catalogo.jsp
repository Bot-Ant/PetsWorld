<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Catalogo</title>
</head>
<body>
	<div class="catalog-content">
		<div class="filters-panel">
			<p>
				Filtri di ricerca avanzata all'interno della pagina
			</p>
		</div>
		<div class="catalog-main-panel">
			<div class="catolog-top">
				<h1>Titolo della pagina</h1>
			</div>
			<div class="catalog-products">
				<c:forEach items="${list}" var="prd">
					<div class="product-box">
						<div class="image-container">
							<img src="static/images/${prd.foto}">
						</div>
						<h3 class="name">${prd.nome}</h3>
						<div class="text-container">
							<div class="price">
								${prd.prezzo}
							</div>
							<button>Aggiungi</button>
						</div>
					</div>
                    
                </c:forEach>
			</div>
		</div>
	</div>
</body>
</html>