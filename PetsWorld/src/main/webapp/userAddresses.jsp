<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Indirizzi</title>
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div class="user-content">
		<jsp:include page="./static/templates/userNav.html"/>
		<div class="data-panel">
			<div class="welcome">
				<h1>Indirizzi</h1>
				<p>
					Questi sono tutti gli indirizzi che hai salvato.
				</p>
			</div>
			<div class="addresses-box">
				<div class="address-line">

				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>