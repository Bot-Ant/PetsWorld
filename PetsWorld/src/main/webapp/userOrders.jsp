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
	<div class="user-content">
		<jsp:include page="./static/templates/userNav.html"/>
		<div class="data-panel">
			<div class="welcome">
				<h1>Ordini</h1>
				<p>
					Da qui potrai vedere tutti i tuoi ordini e scaricarne le fatture.
				</p>
			</div>
			<div class="orders-list">
				<div class="loop">
					<div class="order-box">
						<div class="order-info">
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
								<button>Dettagli ordine</button>
							</div>
						</div>
						<div class="loop">
							<div class="single-product">
								<div class="picture">
									<img src="./static/images/cucciaPerCani.jpg" alt="foto prodotto">
								</div>
								<div class="product-info">
									<h3 class="name">Nome prodotto</h3>
									<button>
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


					<div class="order-box">
						<div class="order-info">
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
								<button>Dettagli ordine</button>
							</div>
						</div>
						<div class="loop">
							<div class="single-product">
								<div class="picture">
									<img src="./static/images/cucciaPerCani.jpg" alt="foto prodotto">
								</div>
								<div class="product-info">
									<h3 class="name">Nome prodotto</h3>
									<button>
										<i class="fa-regular fa-star"></i>
										<i class="fa-regular fa-star"></i>
										<i class="fa-regular fa-star"></i>
										<i class="fa-regular fa-star"></i>
										<i class="fa-regular fa-star"></i>
									</button>
									<p class="price">€49,90</p>
								</div>
							</div>
							<div class="single-product">
								<div class="picture">
									<img src="./static/images/cucciaPerCani.jpg" alt="foto prodotto">
								</div>
								<div class="product-info">
									<h3 class="name">Nome prodotto</h3>
									<button>
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
	<footer>
		<!-- Page footer-->
		<jsp:include page="./footer.jsp"/>
	</footer>
</body>
</html>