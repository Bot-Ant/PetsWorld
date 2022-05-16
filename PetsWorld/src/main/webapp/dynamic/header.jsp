<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>PetsWorld</title>
	<link rel="stylesheet" href="static/styles/light.css">
	<link rel="stylesheet" href="static/styles/page.css">
    <link rel="stylesheet" href="static/styles/header.css">

</head>
<body>
	<form action="ServletMain" method="post">
	<!-- Extended version of the header, visible when the window is large -->
	<div id="large-header">
		<!-- Elements in the top bar of the header -->
		<div class="top-bar">
			<div class="logo-box">
				<input class="logo" type="image" src="static/images/petsworld.png" alt="logo" name="home">
			</div>
			<div class="bar-center">
				<%@include file="/dynamic/searchbar.jsp"%>
			</div>
			<div class="header-buttons">
				<button class="cart-button" type="submit" name="operazione" value="Carrello">Carrello</button>
				<button class="user-button" type="submit" name="operazione" value="Login">Login</button>
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
	</form>
</body>
</html>