<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Navbar</title>
	<link rel="stylesheet" href="../static/styles/light.css">
	<link rel="stylesheet" href="../static/styles/page.css">
    <link rel="stylesheet" href="../static/styles/header.css">
    <link rel="stylesheet" href="../static/styles/footer.css">
    <link rel="stylesheet" href="../static/styles/user.css">
	<link rel="stylesheet" href="../static/styles/catalog.css">
	<link rel="stylesheet" href="../static/styles/order.css">
</head>
<body>
	<nav>
		<form class="nav-links" action="ServletCatalogo" method="post">
			<button class="links" type="submit" name="animale" value="cane"><span>Cane</span></button>
			<button class="links" type="submit" name="animale" value="gatto"><span>Gatto</span></button>
			<button class="links" type="submit" name="animale" value="pesci"><span>Pesci</span></button>
			<button class="links" type="submit" name="animale" value="volatili"><span>Volatili</span></button>
			<button class="links" type="submit" name="animale" value="piccoliAnimali"><span>Piccoli Animali</span></button>
		</form>
	</nav>
</body>
</html>