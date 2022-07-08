<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Admin navbar</title>
</head>
<body>
	<ul id="admin-nav" >
		<li>
			<div class="row">
				<h3>PRODOTTI</h3>
			</div>
			<div class="link" id="admin-catalog-link">
				<a href="./adminProducts.jsp"><i class="fa-solid fa-store fa-lg"></i><h3> Catalogo prodotti</h3></a>
			</div>
			<div class="link" id="admin-new-product-link">
				<a href="./adminNewProduct.jsp"><i class="fa-solid fa-square-plus fa-lg"></i><h3> Aggiungi prodotto</h3></a>
			</div>
		</li>
		<li>
			<div class="row">
				<h3>BANNER</h3>
			</div>
			<div class="link" id="admin-banners-link">
				<a href="./adminBanners.jsp"><i class="fa-solid fa-images"></i> <h3>Lista banner</h3></a>
			</div>
			<div class="link" id="admin-new-banner-link">
				<a href="./adminNewBanner.jsp"><i class="fa-solid fa-square-plus fa-lg"></i> <h3>Aggiungi banner</h3></a>
			</div>
		</li>
		<li>
			<div class="row">
				<h3>ACCOUNT</h3>
			</div>
			<div class="link" id="admin-info-link">
				<a href="./adminAccount.jsp"><i class="fa-solid fa-id-badge"></i> <h3>Dati personali</h3></a>
			</div>
			<div class="link" id="admin-disconnect-link">
				<a href="./adminAccount.jsp"><i class="fa-solid fa-arrow-right-from-bracket"></i> <h3>Disconnettiti</h3></a>
			</div>
		</li>
	</ul>
</body>
</html>