<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Errore 404</title>
    <link rel="stylesheet" href="./static/styles/error.css">
</head>
<body>
	<header>
		<!-- Compact header for Form pages -->
		<jsp:include page="./formHeader.jsp"/>
	</header>
	<!-- Container section for forms-->
	<div id="error-content">
		<img id="error-image" src="./static/images/dog_error_404.png" alt="immagine di errore con cane">
        <h1 id="error-number">Errore 404</h1>
        <p id="error-message"><span class="code">Not Found:</span> La risorsa richiesta non è stata trovata.</p>
        <a id="home" href="index.jsp">
			<input class="active-accent-button" type="button" value="Torna alla home">
		</a>
	</div>
</body>
</html>