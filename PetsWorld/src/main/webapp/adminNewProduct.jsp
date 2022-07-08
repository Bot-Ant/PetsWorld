<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Nuovo prodotto</title>
</head>
<body>
	<div id="admin-page">
		<header>
			<jsp:include page="./adminHeader.jsp"/>
		</header>
		<div id="admin-page-content" class="column">
			<div id="catalog-new-product" class="box">
				<h1>Nuovo prodotto</h1>
				<div id="product-name-section" class="column">
					<label for="" class="field"><b>Nome</b></label>
					<input type="text" id="product-name" class="input-field" required name="product-name">
				</div>
				<div id="product-selection-boxes" class="row">
					<div id="product-animal-section" class="selection-box left">
						<fieldset>
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
						</fieldset>
					</div>
					<div id="product-type-section" class="selection-box right">
						<fieldset>
							<legend><b>Tipo</b></legend>
							<div class="row">
								<input type="checkbox" id="cane" name="animale" value="cane">
								<label for="cane">Alimenti</label>
							</div>
							<div class="row">
								<input type="checkbox" id="gatto" name="animale" value="gatto">
								<label for="gatto">Cibo</label>
							</div>
							<div class="row">
								<input type="checkbox" id="pesci" name="animale" value="pesci">
								<label for="pesci">Salute</label>
							</div>
							<div class="row">
								<input type="checkbox" id="pesci" name="animale" value="pesci">
								<label for="pesci">Antiparassitario</label>
							</div>
							<div class="row">
								<input type="checkbox" id="volatili" name="animale" value="volatili">
								<label for="volatili">Accessori</label>
							</div>
							<div class="row">
								<input type="checkbox" id="piccolianimali" name="animale" value="piccolianimali">
								<label for="piccolianimali">Giochi</label>
							</div>
						</fieldset>
					</div>
				</div>
				<div id="product-warehouse-section" class="row">
					<div id="product-price-section" class="column left">
						<label for="product-price"><b>Prezzo</b></label>
						<input type="text" id="product-price" class="input-field" required name="product-price">
					</div>
					<div id="product-tax-section" class="column middle">
						<label for="product-tax"><b>Iva</b></label>
						<input type="text" id="product-tax" class="input-field" required name="product-tax">
					</div>
					<div id="product-quantity-section" class="column right">
						<label for="product-quantity"><b>Quantità</b></label>
						<input type="text" id="product-quantity" class="input-field" required name="product-quantity">
					</div>
				</div>
				<div id="product-differences-section" class="row">
					<div id="product-weight-section" class="column left">
						<label for="product-weight"><b>Peso</b></label>
						<input type="text" id="product-weight" class="input-field" required name="product-weight">
					</div>
					<div id="product-size-section" class="column middle">
						<label for="product-size"><b>Dimensione</b></label>
						<input type="text" id="product-size" class="input-field" required name="product-size">
					</div>
					<div id="product-color-section" class="column middle">
						<label for="product-color"><b>Colore</b></label>
						<input type="text" id="product-color" class="input-field" required name="product-color">
					</div>
					<div id="product-expirydate-section" class="column right">
						<label for="product-expiry-date"><b>Scadenza</b></label>
						<input type="text" id="product-expiry-date" class="input-field" required name="product-expiry-date">
					</div>
				</div>
				<div id="product-description-section" class="column">
					<label for=""><b>Descrizione</b></label>
					<textarea name="product-description" id="product-description" class="input-field" cols="30" rows="5"></textarea>
				</div>
				<div id="product-photo-section" class="column">
					<label for="product-picture"><b>Carica le foto:</b></label>
					<input type="file" id="product-picture" name="product-picture" multiple> 
				</div>
				<div id="product-add-button" class="row no-margin">
					<button id="add-new-product" class="active-basic-button">Aggiungi prodotto</button>
				</div>
			</div>
		</div>
	</div>
    <script src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-new-product-link");
	</script>
</body>
</html>