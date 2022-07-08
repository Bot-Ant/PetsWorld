<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Sezione Admin</title>
</head>
<body>
	<div id="admin-page">
		<header>
			<jsp:include page="./adminHeader.jsp"/>
		</header>
		<div id="admin-page-content" class="column">
			<h1>Benvenuto nella tua sezione da admin</h1>
			<div id="admin-info" class="box">
				<div class="row">
					<h1>mypetsworld 0000000001</h1>
				</div>
				<p>dati personali</p>
			</div>
		</div>
	</div>
	<script src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-info-link");
	</script>
</body>
</html>