<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
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
			<button type="submit" class="loginbtn" name="submit" value="ConfermaLogin">Accedi</button>
        	<hr>
        	
        </div>
    </form>
  <form action="ServletMain" method="post">
  		<div class="signin">
    			<p>
    				Non hai ancora un account?
    				<button type="submit" class="link"  name="operazione" value="Registrazione">Registrati</button>
        		</p>
    		</div>
  </form>
</body>
</html>