<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>PetsWorld</title>
	<link rel="stylesheet" href="../styles/light.css">
	<link rel="stylesheet" href="../styles/page.css">
    <link rel="stylesheet" href="../styles/header.css">
    <link rel="stylesheet" href="../styles/user.css">
</head>
<body>
	<nav>
		<div class="nav-links">
		<form action="ServletCatalogo" method="post">
			<button class="links" type="submit" name="operazione" value="cane"><span>Cane</span>
			<button class="links" type="submit" name="operazione" value="gatto"><span>Gatto</span>
			<button class="links" type="submit" name="operazione" value="pesci"><span>Pesci</span>
			<button class="links" type="submit" name="operazione" value="volatili"><span>Volatili</span>
			<button class="links" type="submit" name="operazione" value="piccoliAnimali"><span>Piccoli Animali</span>
			</form>
		</div>
	</nav>
</body>
</html>