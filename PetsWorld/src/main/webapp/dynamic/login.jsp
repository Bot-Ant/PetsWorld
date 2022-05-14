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
		<!-- Compact header for Form pages -->
		<%@include file="formHeader.jsp"%>
	</header>
	<!-- Container section for forms-->
	<div class="form-container">
		<!-- Form rectangle that contains form elements-->
		<div class="form-box">
			<!-- Form section connected to a servlet-->
			<form action="ServletLogin" method="post">
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
			</form>
			<!-- Seperation line between form sections-->
			<hr>
			<!-- Form section connected to a servlet-->
			<form action="ServletMain" method="post">
				<p>
					Non hai ancora un account?
					<button type="submit" class="link"  name="operazione" value="Registrazione">Registrati</button>
				</p>
			</form>
		</div>
	</div>
</body>
</html>