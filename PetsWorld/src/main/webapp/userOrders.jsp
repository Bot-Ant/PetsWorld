<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, model.beans.* , java.lang.*, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ordini</title>
</head>
<body>
	<header>
		<!-- Standard header -->
		<jsp:include page="./header.jsp"/>
	</header>
	<div id="user-content">
		<jsp:include page="./userNav.jsp"/>
		<div id="data-panel">
			<div id="user-page-header">
				<h1>Ordini</h1>
				<p>
					Da qui potrai vedere tutti i tuoi ordini e scaricarne le fatture.
				</p>
			</div>
			<div id="orders-box">
				<!-- if there are no orders -->
				<%
						String errore = (String) request.getAttribute("errore");
						if(errore!=null)
						{
				%>
				
				<div id="no-orders" class="box">
				
					<h1>Non ci sono ordini</h1>
					<p>
						Gli ordini che effettui vengono visualizzati in questa sezione.
					</p>
				</div>
				<!-- if there is at least one order -->
				<div class="loop">
				<%
				
						} else {
						ArrayList<Ordine> ordine = (ArrayList<Ordine>) request.getAttribute("ordini");
						for(int i=0; i<ordine.size();i++)
						{
				%>
					<div class="order-box">
						<div class="box">
							<div class="order-info">
								<form action="ServletFattura" method="get" class="row">
									<div class="delivery-number">
										<p>Ordine n°</p>
										<input type="text" class="input-field inactive" name="id_ordine" value="<%=ordine.get(i).getIdOrdine()%>">
									</div>
									<div class="total-price">
										<p>Totale</p>
										<input type="text" class="input-field inactive" value="<%=String.format("€%,.2f", (ordine.get(i).getTotale()))%>">
										<input type="hidden" name="totale" value="<%=ordine.get(i).getTotale()%>">
									</div>
									<div class="date-order">
										<p>Data Ordine</p>
										<input type="text" class="input-field inactive" name="data" value="<%=ordine.get(i).getDataOrdine()%>">
									</div>
									<div>
										<button class="active-basic-button">Dettagli ordine</button>
									</div>
								</form>
							</div>
						</div>
					</div>
					
					<%
							}
						}
					%>

				</div>
			</div>
		</div>
	</div>
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
	<script type="text/javascript" src="./static/scripts/regex.js"></script>
	<script type="text/javascript" src="./static/scripts/user.js"></script>
	<script>
		setUserSectionActive("user-orders");
	</script>
</body>
</html>