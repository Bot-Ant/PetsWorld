<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>Registrazione</title>
    <link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
</head>
<body>
	<script src="./static/scripts/page.js"></script>
	<script>window.onload = downloadScripts();</script>
	<header>
		<!-- Compact header for Form pages -->
		<jsp:include page="./formHeader.jsp"/>
	</header>
    <!-- Container section for forms-->
    <div class="form-container">
		<!-- Form rectangle that contains form elements-->
		<div class="form-box">
			<!-- Form section connected to a servlet-->
			<form class="form-section" action="ServletReg" method="post">
				<h1>Crea il tuo account</h1>
				<ul>
					<li>
						<label class="field-name" for="nome"><b>Nome</b></label>
						<input type="text" required name="nome" placeholder="" id="nome" onblur="nameValidity()">
						<p id="name-validity"></p>
					</li>
					<li>
						<label class="field-name" for="cognome"><b>Cognome</b></label>
						<input type="text" required name="cognome" placeholder="" id="cognome" onblur="surnameValidity()">
						<p id="surname-validity"></p>
					</li>
					<li>
						<label class="field-name" for="email"><b>Email</b></label>
						<input type="email" required name="email" placeholder="" id="email" onkeyup="lowercase('email')" onblur="emailValidity()">
						<p id="email-validity"></p>
					</li>
					<li>
						<label class="field-name" for="password"><b>Password</b></label>
						<input type="password" required name="password" placeholder="Inserire almeno 8 caratteri" id="password" minlength="8" onblur="passwordValidity()">
						<p id="password-validity"></p>
					</li>
					<li>
						<label class="field-name" for="codiceFiscale"><b>Codice Fiscale</b></label>
						<input type="text" required name="codiceFiscale" placeholder="" id="codiceFiscale" onkeyup="uppercase('codiceFiscale')" onblur="taxCodeValidity()" >
						<p id="taxcode-validity"></p>
					</li>
					<li>
						<label class="field-name" for="cellulare"><b>Cellulare</b></label>
						<input type="tel" pattern="[0-9]{3}-[0-9]{7}" placeholder="111-1111111" required name="cellulare" id="cellulare" onblur="phoneNumberValidity()" >
						<p id="number-validity"></p>
					</li>
				</ul>
				<p>
					Creando il tuo account accetti i nostri <a href="#">Termini e condizioni</a>.
				</p>
				<button type="submit" class="registerbtn" name="submit" value="ConfermaRegistrati">Registrati</button>
			</form>
			<!-- Seperation line between form sections-->
			<hr>
			<!-- Form section connected to a servlet-->
			<p>
				Non hai ancora un account?
				<a href="./login.jsp">Accedi</a>
			</p>
		</div>
	</div>
</body>
</html>