<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<title>PetsWorld</title>
</head>
<body>
	<form class="search-bar" autocomplete="off" action="ServletSearch" method="post">
	 <div class="autocomplete">
        <input id="myInput" class="" type="text" name="nome" placeholder="Cerca prodotto" required>
         </div>
         <button class="" type="submit" name="nome"><i class="fa-solid fa-magnifying-glass fa-xl"></i></button>
    </form>
     
</body>
</html>