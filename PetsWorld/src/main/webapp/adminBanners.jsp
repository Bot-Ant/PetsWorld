<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pagina banner admin</title>
</head>
<body>
	<div id="admin-page">
		<header>
			<jsp:include page="./adminHeader.jsp"/>
		</header>
		<div id="admin-page-content" class="column">
			<div id="catalog-new-banner" class="box">
				<h1>Nuovo banner</h1>
			</div>
			<h1>Banner</h1>
			<div id="banners-list" class="box">
				
			</div>
		</div>
	</div>
	<script src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-banners-link");
	</script>
</body>
</html>