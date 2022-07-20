<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Accesso</title>
	<link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
</head>
<body>
	<header>
		<!-- Compact header for Form pages -->
		<jsp:include page="./formHeader.jsp"/>
	</header>
	<!-- Container section for forms-->
	<div class="form-container">
		<%
					String errore = (String) request.getAttribute("errore");
					if(errore != null)
					{ 
					%>
						<div class="login-error">
							<h3>Si è verificato un errore!</h3>
							<p><%=errore %></p>
						</div>
		  			<%
		  			}
		  		%>
		<!-- Form rectangle that contains form elements-->
		<div class="form-box">
			<!-- Form section connected to a servlet-->
			<form class="form-section" action="ServletLogin" method="post">
				<h1>Accedi al tuo account</h1>
				<ul>
					<li>
						<label class="field" for="email"> <b>Email</b></label><br>
						<input class="input-field" type="email" required name="email" placeholder="" id="email">
					</li>
					<li>
						<label class="field" for="password"><b>Password</b></label><br>
						<input class="input-field" type="password" required name="password" placeholder="" id="password">
					</li>
				</ul>
				
				<button type="submit" id="loginbtn" class="active-accent-button" name="submit" value="ConfermaLogin">Accedi</button>
			</form>
			<!-- Seperation line between sections-->
			<hr>
			<!-- Section with link to login page -->
			<p>
				Non hai ancora un account?
				<a href="./registrazione.jsp">Registrati</a>
			</p>
		</div>
	</div>
</body>
</html>