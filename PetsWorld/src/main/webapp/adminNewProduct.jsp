<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.beans.*"%>
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
		<form method="post" action="ServletAggiuntaProdotto" id="admin-page-content" class="column">
			<div id="catalog-new-product" class="box">
				<h1>Nuovo prodotto</h1>
					<%
						HttpSession sessione=request.getSession(true);
						if (sessione != null)
						{
							Utente admin = (Utente) sessione.getAttribute("Admin");
							if (admin != null)
							{
								String error2 = (String)request.getAttribute("errore2"); 
								if(error2 != null)
								{ 
					%>
					<div class="changes-result-message"><%=error2 %></div>
					<% 
						}
					%>
				<div id="product-name-section" class="column">
					<label for="product-name" class="field"><b>Nome</b></label>
					<input type="text" id="product-name" class="input-field" name="product-name" required>
					<p id="product-name-validity" class="invalid"></p>
				</div>
				<div id="product-selection-boxes" class="row">
					<div id="product-animal-section" class="selection-box left">
						<fieldset required>
							<legend><b>Animale</b></legend>
							<div class="row">
								<input type="radio" id="cane" name="animale" value="cane" checked>
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
								<input type="checkbox" id="alimenti" name="tipo" value="alimenti">
								<label for="alimenti">Alimenti</label>
							</div>
							<div class="row">
								<input type="checkbox" id="cibo-umido" name="tipo" value="cibo umido">
								<label for="cibo-umido">Cibo umido</label>
							</div>
							<div class="row">
								<input type="checkbox" id="crocchette" name="tipo" value="crocchette">
								<label for="crocchette">Crocchette</label>
							</div>
							<div class="row">
								<input type="checkbox" id="salute" name="tipo" value="salute">
								<label for="salute">Salute</label>
							</div>
							<div class="row">
								<input type="checkbox" id="tappetini" name="tipo" value="tappetini assorbenti">
								<label for="tappetini">Tappetini assorbenti</label>
							</div>
							<div class="row">
								<input type="checkbox" id="antiparassitario-spot-on" name="tipo" value="antiparassitario spot-on">
								<label for="antiparassitario-spot-on">Antiparassitario spot-on</label>
							</div>
							<div class="row">
								<input type="checkbox" id="antiparassitario-collare" name="tipo" value="antiparassitario collare">
								<label for="antiparassitario-collare">Antiparassitario collare</label>
							</div>
							<div class="row">
								<input type="checkbox" id="accessori" name="tipo" value="accessori">
								<label for="accessori">Accessori</label>
							</div>
							<div class="row">
								<input type="checkbox" id="guinzagli" name="tipo" value="guinzagli">
								<label for="guinzagli">Guinzagli</label>
							</div>
							<div class="row">
								<input type="checkbox" id="cucce" name="tipo" value="cucce">
								<label for="cucce">Cucce</label>
							</div>
							<div class="row">
								<input type="checkbox" id="ciotole" name="tipo" value="ciotole">
								<label for="ciotole">Ciotole</label>
							</div>
							<div class="row">
								<input type="checkbox" id="giochi" name="tipo" value="giochi">
								<label for="giochi">Giochi</label>
							</div>
							<div class="row">
								<input type="checkbox" id="intrattenimento" name="tipo" value="intrattenimento">
								<label for="intrattenimento">Intrattenimento</label>
							</div>
						</fieldset>
					</div>
				</div>
				<div id="product-warehouse-section" class="row">
					<div id="product-price-section" class="column left">
						<label for="product-price"><b>Prezzo</b></label>
						<input type="text" id="product-price" class="input-field" name="product-price" placeholder="00.00" required>
						<p id="product-price-validity" class="invalid"></p>
					</div>
					<div id="product-tax-section" class="column middle">
						<label for="product-tax"><b>Iva</b></label>
						<select name="product-tax" id="product-tax" class="input-field" required>
							<option value="4">4%</option>
							<option value="10">10%</option>
							<option value="22">22%</option>
						</select>
					</div>
					<div id="product-quantity-section" class="column right">
						<label for="product-quantity"><b>Quantità</b></label>
						<input type="text" id="product-quantity" class="input-field" name="product-quantity" required>
						<p id="product-quantity-validity" class="invalid"></p>
					</div>
				</div>
				<div id="product-differences-section-1" class="row">
					<div id="product-weight-section" class="column left">
						<label for="product-weight"><b>Peso</b></label>
						<input type="text" id="product-weight" class="input-field" name="product-weight">
					</div>
					<div id="product-size-section" class="column middle">
						<label for="product-size"><b>Dimensione</b></label>
						<input type="text" id="product-size" class="input-field" name="product-size">
					</div>
					<div id="product-color-section" class="column right">
						<label for="product-color"><b>Colore</b></label>
						<input type="text" id="product-color" class="input-field" name="product-color">
					</div>
				</div>
				<div id="product-differences-section-2" class="row">
					<div id="product-expirydate-section" class="column left">
						<label for="product-expiry-date"><b>Scadenza</b></label>
						<input type="text" id="product-expiry-date" class="input-field" name="product-expiry-date" placeholder="YYYY/MM/GG">
					</div>
				</div>
				<div id="product-description-section" class="column">
					<label for=""><b>Descrizione</b></label>
					<textarea name="product-description" id="product-description" class="input-field" cols="30" rows="5" required></textarea>
				</div>
				<div id="product-photo-section" class="column">
					<label for="product-picture"><b>Carica la foto:</b></label>
					<input type="file" id="product-picture" name="product-picture" required> 
				</div>
				<div id="product-add-button" class="row no-margin">
					<input type="button" id="add-new-product" class="active-basic-button" value="Aggiungi prodotto" onclick="submitNewProduct()">
				</div>
			</div>
		</form>
	</div>
	<%
							}
							else
							{
	%>
							<script>
								window.onload = redirectToPage("error401.jsp");
							</script>
	<%						
							}
						}
	%>
	
	<script type="text/javascript" src="./static/scripts/regex.js"></script>
	<script type="text/javascript" src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-new-product-link");
	</script>
</body>
</html>