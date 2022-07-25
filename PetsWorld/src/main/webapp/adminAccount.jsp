<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.beans.*"%>
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
		<%
			HttpSession sessione=request.getSession(true);
			if (sessione != null)
			{
				Utente admin = (Utente) sessione.getAttribute("Admin");
				if (admin != null) {
		%>
		
		<div id="admin-page-content" class="column">
			<h1>Benvenuto nella tua sezione da admin</h1>
			<div id="admin-info" class="box">
				<div class="row">
					<h1>mypetsworld 0000000001</h1>
				</div>
				<p><%=admin.getNome()%></p>
				<p><%=admin.getCognome()%></p>
				<p><%=admin.getEmail()%></p>
				<p><%=admin.getPassword()%></p>
				<p><%=admin.getTelefono()%></p>
				<p><%=admin.getCodiceFiscale()%></p>
			</div>
		</div>
	</div>
	
		<%
				}
				else
				{
		%>
					<script>
					window.onload = redirectToPage("error401.jsp");
					</script>
		<%
				}
			}
		%>	
	<script src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-info-link");
	</script>
</body>
</html>