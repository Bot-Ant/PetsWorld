<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Accesso</title>
	<link rel="stylesheet" href="static/styles/light.css">
	<link rel="stylesheet" href="static/styles/page.css">    
    <link rel="stylesheet" href="static/styles/user.css">
</head>
<body>
	<header>
		<!-- Navigation bar menu-->
		<%@include file="formHeader.jsp"%>
	</header>
    <form action="ServletLogin" method="post">
        <div class="form">
        	<h1>Accedi al tuo account</h1>
			<ul>
				<li>
					<label class="field" for="email"> <b>Email</b></label><br>
                	<input type="email" required name="email" placeholder="Inserire Email" id="email">
				</li>
				<li>
					<label class="field" for="password"><b>Password</b></label><br>
                	<input type="password" required name="password" placeholder="Inserire Password" id="password">
				</li>
			</ul>
        	<hr>
        	<div class="signin">
    			<p>
    				Non hai ancora un account?
        			<a href="dynamic/registrazione.jsp"><span style="color: dodgerblue"> Registrati!</span></a>
        		</p>
    		</div>
        </div>
    </form>
</body>
</html>