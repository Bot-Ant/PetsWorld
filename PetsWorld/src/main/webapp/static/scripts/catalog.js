function hideFilters() {
    
    const newtitle = document.createElement("button");
	newtitle.setAttribute("id", "filter-section-title");
	newtitle.setAttribute("class", "filter-section-title active-basic-button");
	newtitle.setAttribute("onclick", "showFilters()");
    newtitle.innerHTML = "Filtri ricerca";
	const parent = document.getElementById("filters-panel");
	const oldtext = document.getElementById("filter-section-title");
	parent.replaceChild(newtitle, oldtext);

    document.getElementById("form-filtri").style.display = "none";
}

function showFilters() {
    const newtitle = document.createElement("button");
	newtitle.setAttribute("id", "filter-section-title");
	newtitle.setAttribute("class", "filter-section-title active-basic-button");
	newtitle.setAttribute("onclick", "hideFilters()");
    newtitle.innerHTML = "Filtri ricerca";
	const parent = document.getElementById("filters-panel");
	const oldtext = document.getElementById("filter-section-title");
	parent.replaceChild(newtitle, oldtext);
    document.getElementById("form-filtri").style.display = "flex";
}