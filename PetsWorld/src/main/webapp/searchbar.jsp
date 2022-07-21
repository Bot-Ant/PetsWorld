<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
  <title>PetsWorld</title>
</head>
<body>
  <form class="search-bar" autocomplete="off" action="ServletSearch" method="post">
    <div class="autocomplete">
      <input type="text" name="search" id="search" placeholder="Cerca Prodotto" class="form-control" />
    </div>
    <ul class="list-group" id="result"></ul>
    <button class="" type="submit" name="nome"><i class="fa-solid fa-magnifying-glass fa-xl"></i></button>
  </form>
  <script src="./static/scripts/searchbar.js"></script>
</body>
</html>