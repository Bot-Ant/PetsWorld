<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>UserLogged</title>
    <link rel="stylesheet" href="static/styles/light.css">
	<link rel="stylesheet" href="static/styles/page.css">
    <link rel="stylesheet" href="static/styles/header.css">
    <link rel="stylesheet" href="static/styles/footer.css">
    <link rel="stylesheet" href="static/styles/user.css">
	<link rel="stylesheet" href="static/styles/catalog.css">
	<link rel="stylesheet" href="static/styles/order.css">
</head>
<body>
    <header>
        <%@include file="../formHeader.jsp" %>
    </header>
    <div class="login-message-container">
        <h1>Accesso effettuato correttamente</h1>
        <form class="access" action="ServletMain" method="post">
            <button class="redirect" type="submit" name="operazione" value="Home">Torna alla Home</button>
        </form>
    </div>
    
</body>
</html>