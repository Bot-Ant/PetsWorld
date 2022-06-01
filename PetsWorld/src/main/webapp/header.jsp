<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Header</title>
	<link rel="stylesheet" href="./static/styles/light.css">
	<link rel="stylesheet" href="./static/styles/page.css">
    <link rel="stylesheet" href="./static/styles/header.css">
    <link rel="stylesheet" href="./static/styles/footer.css">
    <link rel="stylesheet" href="./static/styles/user.css">
	<link rel="stylesheet" href="./static/styles/catalog.css">
	<link rel="stylesheet" href="./static/styles/order.css">
	<script src="https://kit.fontawesome.com/d2fb96c0f6.js" crossorigin="anonymous"></script>
</head>
<body>
	<!-- Extended version of the header, visible when the window is large -->
	<div id="large-header">
		<!-- Elements in the top bar of the header -->
		<div class="top-bar">
			<div class="logo-box">
				<a href="index.jsp">
					<img class="logo" src="./static/images/petsworld-logo.svg" alt="logo" name="home">
				</a>
			</div>
			<div class="bar-center">
				<jsp:include page="./searchbar.jsp"/>
			</div>
			<div class="header-buttons">
				<a href="./cart.jsp"><i class="fa-solid fa-cart-shopping fa-xl"></i></a>
				<a href="./login.jsp">Login <i class="fa-solid fa-user fa-xl"></i></a>
			</div>
		</div>
		<!-- Elements in the bottom bar of the header -->
		<div class="bottom-bar">
			<jsp:include page="./navbar.jsp"/>
		</div>
	</div>
	<!-- Condensed version of the header, visible when the window is small -->
	<div id="small-header">
		<div class="top-bar">
			
		</div>
		<div class="bottom-bar">
			
		</div>
	</div>
</body>
</html>