<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Header</title>
	<link rel="stylesheet" href="../static/styles/light.css">
	<link rel="stylesheet" href="../static/styles/page.css">
    <link rel="stylesheet" href="../static/styles/header.css">
    <link rel="stylesheet" href="../static/styles/footer.css">
    <link rel="stylesheet" href="../static/styles/user.css">
	<link rel="stylesheet" href="../static/styles/catalog.css">
	<link rel="stylesheet" href="../static/styles/order.css">

</head>
<body>
	<!-- Extended version of the header, visible when the window is large -->
	<div id="large-header">
		<!-- Elements in the top bar of the header -->
		<div class="top-bar">
			<div class="logo-box">
				<a href="index.jsp">
					<img class="logo" src="../static/images/petsworld.png" alt="logo" name="home">
				</a>
			</div>
			<div class="bar-center">
				<%@include file="./searchbar.jsp"%>
			</div>
			<div class="header-buttons">
				<a href="./catalogo.jsp">Catalogo</a>
				<a href="./cart.jsp">Carrello</a>
				<a href="./login.jsp">Login</a>
			</div>
		</div>
		<!-- Elements in the bottom bar of the header -->
		<div class="bottom-bar">
			<%@include file="/dynamic/navbar.jsp"%>
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