<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    <title>Registrazione</title>
    <link rel="stylesheet" href="static/styles/user.css">
</head>
<body>
    <form action="ServletReg" method="post">
        <div class="form">
        	<h1>Crea il tuo account</h1>
            <p>Benvenuto Amico degli animali! Per favore inserisci i dati nei vari campi di compilazione</p>
            <hr>
			<ul>
				<li>
					<label class="field" for="nome"><b>Nome</b></label><br>
            		<input type="text" required name="nome" placeholder="Inserire Nome" id="nome">
            	</li>
				<li>
					<label class="field" for="cognome"><b>Cognome</b></label><br>
               		<input type="text" required name="cognome" placeholder="Inserire Cognome" id="cognome">
				</li>
				<li>
					<label class="field" for="email"> <b>Email</b></label><br>
                	<input type="email" required name="email" placeholder="Inserire Email" id="email">
				</li>
				<li>
					<label class="field" for="password"><b>Password</b></label><br>
                	<input type="password" required name="password" placeholder="Inserire Password" id="password">
				</li>
				<li>
					<label class="field" for="cellulare"><b>Cellulare</b></label><br>
                	<input type="tel" pattern="[0-9]{3}-[0-9]{7}" placeholder="Inserire Cellulare" name="cellulare" id="cellulare">
				</li>
			</ul>
            <hr>
            <p>
        		Creando il tuo account accetti il nostro <a href="#"><span style="color: dodgerblue">Termini e condizioni</span></a>
        	</p>
        	<button type="submit" class="registerbtn" name="submit" value="ConfermaRegistrati">Registrati!</button>
        	<hr>
        	<div class="signin">
    			<p>
    				Hai già un account?
        			<a href="dynamic/index.jsp"><span style="color: dodgerblue"> Effettua il login! </span></a>
        		</p>
    		</div>
        </div>
    </form>
    
</body>
</html>