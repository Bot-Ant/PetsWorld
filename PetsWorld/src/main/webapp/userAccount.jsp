<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pagina utente</title>
</head>
<body>

	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div id="user-content">
		<jsp:include page="./static/templates/userNav.html"/>
		<div id="data-panel">
			<div id="user-page-header">
				<h1>My petsworld</h1>
					<%
						HttpSession sessione=request.getSession(true);
						if (sessione != null)
						{
							Utente utente = (Utente) sessione.getAttribute("utente");
							if (utente != null) {
								%>
								
								<%
					%>
				<p>
					Ciao <%=utente.getNome()%> <%=utente.getCognome()%>, benvenuto nel tuo spazio personale.
				</p>
					<%
							} else {
						%>
						<script>
							window.onload = redirectToPage("error401.jsp");
						</script>
						<%
							}
						}
					%>
			</div>
			<div class="extra">
				<div class="donazioni">

				</div>
				<div class="adozioni">

				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
	<script type="text/javascript" src="./static/scripts/page.js"></script>
	<script type="text/javascript" src="./static/scripts/user.js"></script>
	<script>
		setUserSectionActive("user-petsworld");
	</script>
</body>
</html>