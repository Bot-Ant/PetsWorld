<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
    <meta charset="utf-8">
    <title>Registrazione</title>
    <link rel="stylesheet" href="static/styles/light.css">
	<link rel="stylesheet" href="static/styles/page.css">    
    <link rel="stylesheet" href="static/styles/user.css">
</head>
<body>
	<header>
		<!-- Navigation bar menu-->
		<jsp:include page="../formHeader.jsp"/>
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
				</li>
			</ul>	
    	</div>
    </form>
</body>
</html>