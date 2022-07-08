function setAdminSectionActive(id){
    document.getElementById(id).className = "active-link";
}

function editProductData(id) {
    document.getElementById("id-price").className = "input-field";
    document.getElementById("id-quantity").className = "input-field";

    const newbutton = document.createElement("button");
    newbutton.setAttribute("id", "save-button-" + id);
    newbutton.setAttribute("class", "active-edit-button");
    newbutton.innerHTML = "Salva"
    const parent = document.getElementById("edit-section-id_prodotto");
    const oldbutton = document.getElementById("edit-button-id_prodotto");
    parent.replaceChild(newbutton, oldbutton);
}