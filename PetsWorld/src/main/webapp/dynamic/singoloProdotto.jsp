<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${prodotto}" var="prd">
		<div class="product-box">
			<div class="image-container">
				<img src="static/images/${prd.foto}">
			</div>
			<h3 class="name">${prd.nome}</h3>
			<div class="text-container">
				<div class="price">
					${prd.prezzo}
				</div>
				<button>Aggiungi</button>
			</div>
		</div>              
    </c:forEach>
</body>
</html>