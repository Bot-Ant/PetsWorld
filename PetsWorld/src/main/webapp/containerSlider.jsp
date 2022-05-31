<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
		<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contenitore Offerte</title>
    <link rel="" href=""> <!-- css -->

</head>
<body>

<div id="container">
    <div id="container--espansioni">

        <div class="sliders">
            <i class="fas fa-arrow-left" id="prevbtn"></i>
            <i class="fas fa-arrow-right" id="nextbtn"></i>
            <div class="pre-slide">

                <c:forEach items="${list}" var="image">
                    <img src="static/images/${image.foto}">
                </c:forEach>
                <script src="javascript/jsbanner.js" ></script>

            </div>

        </div>
    </div>
</div>

</body>
</html>