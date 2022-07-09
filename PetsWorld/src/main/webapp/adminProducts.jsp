<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<div class="loop">
					<div class="product-info-line">
						<div class="box">
							<ul id="data-product-id_prodotto" class="row">
								<li class="size-l">
									<input type="text" id="id-product-code" class="input-field inactive" name="product-code" value="id_del_prodotto">
								</li>
								<li class="voice size-m">
									<img src="./static/images/product-0-pic-0.png" alt="Foto prodotto">
								</li>
								<li class="size-auto">
									<h3>Nome prodotto</h3>
								</li>
								<li class="voice size-m">
									<input type="text" id="id-price" class="input-field inactive" name="product-price" value="prezzo_del_prodotto">
								</li>
								<li class="voice size-s">
									<p>iva%</p>
								</li>
								<li class="voice size-xl">
									<p>piccolianimali</p>
								</li>
								<li class="voice size-m">
									<input type="text" id="id-quantity" class="input-field inactive" name="product-quantity" value="quantità_del_prodotto">
								</li>
								<li id="edit-section-id_prodotto" class="voice">
									<input type="button" id="edit-button-id_prodotto" class="active-edit-button" onclick="editProductData('id-product-code')" value="Modifica">
								</li>
								<li class="voice last">
									<button class="active-accent-button">Elimina</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-catalog-link");
	</script>
</body>
</html>