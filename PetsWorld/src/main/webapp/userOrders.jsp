<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<jsp:include page="./static/templates/userNav.html"/>
		<div id="data-panel">
			<div id="user-page-header">
				<h1>Ordini</h1>
				<p>
					Da qui potrai vedere tutti i tuoi ordini e scaricarne le fatture.
				</p>
			</div>
			<div id="orders-box">
				<!-- if there are no orders -->
				<div id="no-orders" style="display: none;">
					<h1>Non ci sono ordini</h1>
					<p>
						Gli ordini che effettui vengono visualizzati in questa sezione.
					</p>
				</div>
				<!-- if there is at least one order -->
				<div class="loop">
					<div class="order-box">
						<div class="box">
							<div class="order-info">
								<div class="row">
									<div class="delivery-number">
										<p>Ordine n°</p>
										<span>SAM0045210093</span>
									</div>
									<div class="date">
										<p>Data ordine</p>
										<span>27/06/2022</span>
									</div>
									<div class="total-price">
										<p>Totale</p>
										<span>€49,90</span>
									</div>
									<div class="order-details">
										<button class="active-basic-button">Dettagli ordine</button>
									</div>
								</div>
							</div>
							<hr>
							<div class="loop">
								<div class="row">
									<div class="picture">
										<img src="./static/images/cucciaPerCani.jpg" alt="foto prodotto">
									</div>
									<div class="product-info">
										<div class="column">
											<h3 class="name">Nome prodotto</h3>
											<button class="stars">
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
											</button>
											<p class="price">€49,90</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="order-box">
						<div class="box">
							<div class="order-info">
								<div class="row">
									<div class="delivery-number">
										<p>Ordine n°</p>
										<span>SAM0045210093</span>
									</div>
									<div class="date">
										<p>Data ordine</p>
										<span>27/06/2022</span>
									</div>
									<div class="total-price">
										<p>Totale</p>
										<span>€49,90</span>
									</div>
									<div class="order-details">
										<button class="active-basic-button">Dettagli ordine</button>
									</div>
								</div>
							</div>
							<hr>
							<div class="loop">
								<div class="row">
									<div class="picture">
										<img src="./static/images/cucciaPerCani.jpg" alt="foto prodotto">
									</div>
									<div class="product-info">
										<div class="column">
											<h3 class="name">Nome prodotto</h3>
											<button class="stars">
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
											</button>
											<p class="price">€49,90</p>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="picture">
										<img src="./static/images/cucciaPerCani.jpg" alt="foto prodotto">
									</div>
									<div class="product-info">
										<div class="column">
											<h3 class="name">Nome prodotto</h3>
											<button class="stars">
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
											</button>
											<p class="price">€49,90</p>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="picture">
										<img src="./static/images/cucciaPerCani.jpg" alt="foto prodotto">
									</div>
									<div class="product-info">
										<div class="column">
											<h3 class="name">Nome prodotto</h3>
											<button class="stars">
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
												<i class="fa-regular fa-star"></i>
											</button>
											<p class="price">€49,90</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
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