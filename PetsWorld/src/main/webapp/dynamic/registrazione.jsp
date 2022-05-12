<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
    <title>Registrazione</title>
  
</head>
<body>

    <form action="ServletReg" method="post">

        <div class="">

            <p>Benvenuto Amico degli animali! Per favore inserisci i dati nei vari campi di compilazione</p>
            <hr>

             <label for="nome"><b>Nome</b></label><br><br>
                 <input type="text" required name="nome" placeholder="Inserire Nome" id="nome"><br>
            <label for="cognome"><b>Cognome</b></label><br><br>
                 <input type="text" required name="cognome" placeholder="Inserire Cognome" id="cognome"><br>
             <label for="email"> <b>Email</b></label><br><br>
                 <input type="email" required name="email" placeholder="Inserire Email" id="email"><br>
            <label for="password"><b>Password</b></label><br><br>
                 <input type="password" required name="password" placeholder="Inserire Password" id="password"><br>
            <label for="cellulare"><b>Cellulare</b></label><br><br>
                    <input type="tel" pattern="[0-9]{3}-[0-9]{7}" placeholder="Inserire Cellulare" name="cellulare" id="cellulare">

             <hr>
             <p>
                 Creando il tuo account accetti il nostro <a href="#"><span style="color: dodgerblue">Termini e condizioni</span></a>
             </p>

        <button type="submit" class="registerbtn" name="submit" value="ConfermaRegistrati">Registrati!</button>

        </div>

    </form>

        <div class="signin">
           <p>Hai già un account?
            <a href="dynamic/index.jsp"><span style="color: dodgerblue"> Effettua il login! </span></a></p>
        </div>




<!--Footer-->
</body>
</html>