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
        <link rel="stylesheet" href="static/styles/footer.css">
        <link rel="stylesheet" href="static/styles/user.css">
	</head>
<body>
	<header>
		<!-- Standard header -->
		<%@include file="/dynamic/header.jsp" %>
	</header>
	<div class="home-content">
		<!-- Banner with news and sales -->
		<div class="banner">

		</div>
		<!-- Selection of the best products of the website -->
		<div class="best-products">
			<!-- Row of products selected -->
			<div class="products-row">
				<!-- Title of the section -->
				<h2>Più venduti</h2>
				<!-- Products to show in the row -->
			</div>
			<div class="products-row">
				<h2>Novità</h2>
			</div>
			<div class="products-row">
				<h2>Consigliati</h2>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<%@include file="/dynamic/footer.jsp" %>
	</footer>
</body>
</html>