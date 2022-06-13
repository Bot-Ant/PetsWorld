<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Admin header</title>
	<link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
	<link rel="stylesheet" href="./static/styles/admin.css">
	<script src="https://kit.fontawesome.com/d2fb96c0f6.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Extended version of the header, visible when the window is large -->
	<div id="extended-header">
		<!-- Elements in the top bar of the header -->
		<div class="admin-header">
			<div class="logo-box">
				<a href="index.jsp">
					<img class="logo" src="./static/images/petsworld-logo.svg" alt="logo" name="home">
				</a>
			</div>
			<jsp:include page="./adminNavbar.jsp"/>
			<div class="header-buttons">
				<a href="./adminAccount.jsp">Account <i class="fa-solid fa-user fa-xl"></i></a>
			</div>
		</div>
	</div>
	<!-- Condensed version of the header, visible when the window is small -->
	<div id="condensed-header">
		<div class="top-bar">
			
		</div>
	</div>
</body>
</html>