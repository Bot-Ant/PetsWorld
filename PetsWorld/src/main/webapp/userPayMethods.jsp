<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, model.beans.* , java.lang.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Metodi di pagamento</title>
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
				<h1>Metodi di pagamento</h1>
				<p>
					Questi sono tutti i metodi di pagamento che hai salvato.
				</p>
			</div>
			<div id="pay-methods-box" class="user-list box">
				<!-- if there is no saved payment method -->
				<div id="no-user-elements" class="row" style="display: none;">
					<h2 class="message">Non hai metodi di pagamento salvati</h2>
					<input type="button" class="active-basic-button" value="Aggiungi metodo di pagamento" onclick="activateNewUserElementForm()">
				</div>
				<hr id="top-separator" class="not-displayed">
				<!-- if there is at least one saved payment method -->
				<div id="add-pay-method" class="row">
					<input type="button" class="active-basic-button" value="Aggiungi metodo di pagamento" onclick="activateNewUserElementForm()">
				</div>
				<hr id="top-separator">
				<div class="loop">
				<%
					HttpSession sessione=request.getSession(true);
				if (sessione != null)
				{
					Utente utente = (Utente) sessione.getAttribute("utente");
			               for(MetodoPagamento u : utente.getMetodiPagamento()){ 

            
						%>
					<div id="user-element-<%=u.getIdpaga()%>" class="user-element-line row">
						<div class="user-element-data">
							<div class="row">
								<div class="column">
									<input type="text" id="pay-method-number-<%=u.getIdpaga()%>" class="input-field inactive user-element-name" name="pay-method-number" value="<%=u.getNumero()%>" required>
									<p id="pay-method-number-<%=u.getIdpaga()%>-validity" class="invalid"></p>
								</div>
							</div>
							<div class="row">
								<div class="column">
									<input type="text" id="pay-method-owner-<%=u.getIdpaga()%>" class="input-field inactive" name="proprietario" value="<%=u.getProprietario()%>" required>
									<p id="pay-method-owner-<%=u.getIdpaga()%>-validity" class="invalid"></p>
								</div>
							</div>
							<div class="row">
								<div class="column">
									<input type="text" id="pay-method-month-<%=u.getIdpaga()%>" class="input-field inactive number" name="mese" value="<%=u.getMeseScadenza()%>" required>
									<p id="pay-method-month-<%=u.getIdpaga()%>-validity" class="invalid"></p>
								</div>
								<div class="column">
									<input type="text" id="pay-method-year-<%=u.getIdpaga()%>" class="input-field inactive number" name="anno" value="<%=u.getAnnoScadenza()%>" required>
									<p id="pay-method-year-<%=u.getIdpaga()%>-validity" class="invalid"></p>
								</div>
								<div class="column">
									<input type="text" id="pay-method-cvv-<%=u.getIdpaga()%>" class="input-field inactive number" name="cvv" value="<%=u.getCvv()%>" required>
									<p id="pay-method-cvv-<%=u.getIdpaga()%>-validity" class="invalid"></p>
								</div>
							</div>
						</div>
						<form action="ServletEliminaPay" method="post" id="user-element-<%=u.getIdpaga()%>-buttons" class="user-element-buttons column">
							<input type="button" id="user-element-<%=u.getIdpaga()%>-edit-button" class="active-edit-button" value="Modifica" onclick="editUserPayMethod('<%=u.getIdpaga()%>')">
							<input type="hidden" id="elimina" name="elimina"  value="<%=u.getIdpaga()%>">
						</form>	
					</div>
						<%
								}
			               		} 
			               
			               %>
				</div>
				
				<!-- always in the page -->
				<div id="new-user-element" class="user-element-line row not-displayed">
					<div class="user-element-data">
						<div class="row">
							<h2>Nuovo metodo di pagamento</h2>
						</div>
						<div class="row">
							<div class="column">
								<input type="text" id="pay-method-number-new" class="input-field user-element-name" name="pay-method-number" placeholder="Numero della carta" required>
								<p id="pay-method-number-new-validity" class="invalid"></p>
							</div>
						</div>
						<div class="row">
							<div class="column">
								<input type="text" id="pay-method-owner-new" class="input-field" name="proprietario" placeholder="Proprietario" required>
								<p id="pay-method-owner-new-validity" class="invalid"></p>
							</div>
						</div>
						<div class="row">
							<div class="column">
								<input type="text" id="pay-method-month-new" class="input-field number" name="mese" placeholder="Mese" required>
								<p id="pay-method-month-new-validity" class="invalid"></p>
							</div>
							<div class="column">
								<input type="text" id="pay-method-year-new" class="input-field number" name="anno" placeholder="Anno" required>
								<p id="pay-method-year-new-validity" class="invalid"></p>
							</div>
						</div>
					</div>
					<input type="button" id="save-new-user-element" class="active-save-button" value="Salva" onclick="submitNewPayMethod('new')">
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
		setUserSectionActive("user-payments");
	</script>
</body>
</html>