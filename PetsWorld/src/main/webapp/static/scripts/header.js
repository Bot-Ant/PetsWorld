function updateCartBadgeValue(newvalue){
	const newcart = document.createElement("a");
	newcart.setAttribute("id", "cart-icon-link");
	newcart.setAttribute("class", "cart");
	newcart.setAttribute("href", "cart.jsp");
	const badgeicon = document.createElement("i");
	badgeicon.setAttribute("class", "fa badge fa-lg");
	badgeicon.setAttribute("value", newvalue);
	const carticon = document.createElement("i");
	carticon.setAttribute("class", "fa-solid fa-cart-shopping fa-xl");
	newcart.appendChild(badgeicon);
	badgeicon.appendChild(carticon);
	const parent = document.getElementById("header-buttons");
	const oldcart = document.getElementById("cart-icon-link");
	parent.replaceChild(newcart, oldcart);
}