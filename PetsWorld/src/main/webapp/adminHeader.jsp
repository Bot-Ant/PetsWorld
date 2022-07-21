<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Admin header</title>
	<link rel="icon" type="image/png" href="./static/images/website-logo-icon.png">
	<link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
	<link rel="stylesheet" href="./static/styles/searchbar.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
	<link rel="stylesheet" href="./static/styles/form.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
	<link rel="stylesheet" href="./static/styles/admin.css">
	<script src="https://kit.fontawesome.com/d2fb96c0f6.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Extended version of the header, visible when the window is large -->
	<div id="extended-header" class="admin-header">
		<div class="logo-box">
			<a href="index.jsp">
				<img class="logo" src="./static/images/petsworld-logo.svg" alt="logo" name="home">
			</a>
		</div>
		<nav>
			<jsp:include page="./adminNavbar.jsp"/>
		</nav>
	</div>
	<!-- Condensed version of the header, visible when the window is small -->
	<div id="condensed-header">
		<div class="top-bar">
			
		</div>
	</div>
</body>
</html>