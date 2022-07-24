function updateCartBadgeValue(newvalue){
	updateCartBadgeUniversal(newvalue, "cart-icon-link", "header-buttons");
	updateCartBadgeUniversal(newvalue, "cart-icon-link-small", "header-buttons-small");
}

function updateCartBadgeUniversal(newvalue, id, parentid) {
	const newcart = document.createElement("a");
	newcart.setAttribute("id", id);
	newcart.setAttribute("class", "cart-icon-link button");
	newcart.setAttribute("href", "cart.jsp");
	const badgeicon = document.createElement("i");
	badgeicon.setAttribute("class", "fa badge fa-lg");
	badgeicon.setAttribute("value", newvalue);
	const carticon = document.createElement("i");
	carticon.setAttribute("class", "fa-solid fa-cart-shopping fa-xl");
	newcart.appendChild(badgeicon);
	badgeicon.appendChild(carticon);
	const parent = document.getElementById(parentid);
	const oldcart = document.getElementById(id);
	parent.replaceChild(newcart, oldcart);
}

function redirectToPage(newpage) {
    window.location.href = newpage;
}