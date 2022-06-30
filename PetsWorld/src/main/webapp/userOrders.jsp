<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ordini</title>
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
				<h1>Ordini</h1>
				<p>
					Da qui potrai vedere tutti i tuoi ordini e scaricarne le fatture.
				</p>
			</div>
			<div class="orders-box">
				<div class="order-line">

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