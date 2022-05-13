<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>Registrazione</title>
    <link rel="stylesheet" href="static/styles/light.css">
	<link rel="stylesheet" href="static/styles/page.css">    
    <link rel="stylesheet" href="static/styles/user.css">
</head>
<body>
	<header>
		<!-- Navigation bar menu-->
		<%@include file="formHeader.jsp"%>
	</header>
    <form action="ServletReg" method="post">
        <div class="form">
        	<h1>Crea il tuo account</h1>
			<ul>
				<li>
					<label class="field" for="nome"><b>Nome</b></label>
            		<input type="text" required name="nome" placeholder="Nome" id="nome">
            	</li>
				<li>
					<label class="field" for="cognome"><b>Cognome</b></label>
               		<input type="text" required name="cognome" placeholder="Cognome" id="cognome">
				</li>
				<li>
					<label class="field" for="email"> <b>Email</b></label>
                	<input type="email" required name="email" placeholder="Email" id="email">
				</li>
				<li>
					<label class="field" for="password"><b>Password</b></label>
                	<input type="password" required name="password" placeholder="Password" id="password">
				</li>
				<li>
					<label class="field" for="codiceFiscale"><b>Codice Fiscale</b></label>
               		<input type="text" required name="codiceFiscale" placeholder="Codice Fiscale" id="codiceFiscale">
				</li>
				<li>
					<label  for="cellulare"><b>Cellulare</b></label>
                	<input type="tel" pattern="[0-9]{3}-[0-9]{7}" placeholder="cellulare" required name="cellulare" id="cellulare">
				</li>
			</ul>
            <p>
        		Creando il tuo account accetti i nostri <a href="#"><span style="color: green">Termini e condizioni</span></a>.
        	</p>
        	<button type="submit" class="registerbtn" name="submit" value="ConfermaRegistrati">Registrati</button>
        	<hr>
        	<div class="signin">
            <p>
    			    Hai già un account?
        			<a class="link" href="login.jsp"><span> Accedi</span></a>
        		</p>
    		</div>
        </div>
    </form>

</body>
</html>