<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registrazione</title>
    <link rel="stylesheet" href="static/styles/light.css">
	<link rel="stylesheet" href="static/styles/page.css">    
    <link rel="stylesheet" href="static/styles/user.css">
</head>
<body>
	<header>
		<!-- Navigation bar menu-->
		<%@include file="/dynamic/formHeader.jsp"%>
	</header>
    <form action="ServletReg" method="post">
        <div class="form">
        	<h1>Crea il tuo account</h1>
			<ul>
				<li>
					<label class="field" for="città"><b>Città</b></label>
            		<input type="text" required name="nome" placeholder="Nome" id="nome">
            	</li>
				<li>
					
    		</div>
        
    </form>

</body>
</html>