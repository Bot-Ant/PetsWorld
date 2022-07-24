<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.beans.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ordini Admin</title>
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
			<h1>Ordini</h1>
			<div id="orders-list" class="column">		
				<c:forEach items="${ord}" var="ordine">
					<div class="order-info-line">
						<div class="box row">
							<div id="info-order-[id-ordine]" class="product-data-row row">
								<div class="voice size-l">
									<label for="order-code">Id</label>
									<input type="text" id="order-code-[id-ordine]" class="input-field inactive" name="order-code" value="${ordine.idOrdine}">
								</div>
								<div class="voice size-l">
									<label for="order-total">Totale</label>
									<input type="text" id="order-total-[id-ordine]" class="input-field inactive" name="order-total" value="${ordine.totale}">
									<p id="product-price-${prd.idProdotto}-validity" class="invalid"></p>
								</div>
								<div class="voice size-l">
									<label for="order-date">Data</label>
									<input type="text" id="order-date-[id-ordine]" class="input-field inactive" name="order-date" value="${ordine.dataOrdine}">
								</div>
								<div class="voice size-xl">
									<label for="order-user">Utente</label>
									<input type="text" id="order-user-[id-ordine]" class="input-field inactive" name="order-user" value="${ordine.idUtente}">
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
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
	<script type="text/javascript" src="./static/scripts/regex.js"></script>
	<script type="text/javascript" src="./static/scripts/admin.js"></script>
	<script>
		setAdminSectionActive("admin-orders-link");
	</script>
</body>
</html>