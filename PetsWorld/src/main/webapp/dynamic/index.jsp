<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>PetsWorld</title>
		<link rel="stylesheet" href="static/styles/light.css">
		<link rel="stylesheet" href="static/styles/page.css">
        <link rel="stylesheet" href="static/styles/header.css">
        <link rel="stylesheet" href="static/styles/footer.css">
        <link rel="stylesheet" href="static/styles/user.css">
	</head>
<body>
	<header>
		<!-- Page header-->

		<!-- Navigation bar menu-->
		<%@include file="/static/html/headerbarra.html"%>
		
		<!--Search bar-->
		<%@include file="/static/html/bar.html" %>
		
		<!-- Standard header -->
		<%@include file="/dynamic/header.jsp" %>
	</header>
	<footer>
		<!-- Page footer-->
	</footer>
</body>
</html>