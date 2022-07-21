function setAdminSectionActive(id){
    document.getElementById(id).className = "active-link";
}

function editProductData(id) {
    document.getElementById(id + "-price").className = "input-field";
    document.getElementById(id + "-quantity").className = "input-field";
    
    const newbutton = document.createElement("input");
    newbutton.setAttribute("type", "button");
    newbutton.setAttribute("id", "save-button-" + id);
    newbutton.setAttribute("class", "active-save-button");
    newbutton.setAttribute("value", "Salva");
    newbutton.setAttribute("onclick", "submitUpdatedProduct('" + id + "')");

    const parent = document.getElementById("edit-section-" + id);
    const oldbutton = document.getElementById("edit-button-" + id);
    parent.replaceChild(newbutton, oldbutton);
}

function submitNewProduct() {
    if (checkNewProductFields()) {
        //submit del form
    }
}

function submitUpdatedProduct(id) {
    if (checkUpdatedProductFields(id)) {
        //submit del form
    }
}



//funzione per il controllo dei campi del prodotto da aggiornare
function checkUpdatedProductFields(id) {
    var status = 1;
    if (!productPriceUpdateValidity(id)) {
        status = 0;
    }
    if (!productQuantityUpdateValidity(id)) {
        status = 0;
    }
    return status;
}

function productPriceUpdateValidity(id) {
    var name = document.getElementById(id + "-price");
    if (!checkPrice(name)) {
        document.getElementById("product-price-" + id + "-validity").innerHTML = "Non valido";
        return 0;
    } else {
        document.getElementById("product-price-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

function productQuantityUpdateValidity(id) {
    var name = document.getElementById(id + "-quantity");
    if (!checkNumber(name)) {
        document.getElementById("product-quantity-" + id + "-validity").innerHTML = "Non valida";
        return 0;
    } else {
        document.getElementById("product-quantity-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

//funzione per il controllo dei campi del nuovo prodotto
function checkNewProductFields() {
    var status = 1;
    if (!productNameValidity()) {
        status = 0;
    }
    if (!productPriceValidity()) {
        status = 0;
    }
    if (!productQuantityValidity()) {
        status = 0;
    }
    return status;
}


function productNameValidity() {
    var name = document.getElementById("product-name");
    if (!checkComplexName(name)) {
        document.getElementById("product-name-validity").innerHTML = "Nome non valido";
        return 0;
    } else {
        document.getElementById("product-name-validity").innerHTML = "";
        return 1;
    }
}

function productPriceValidity() {
    var name = document.getElementById("product-price");
    if (!checkPrice(name)) {
        document.getElementById("product-price-validity").innerHTML = "Non valido";
        return 0;
    } else {
        document.getElementById("product-price-validity").innerHTML = "";
        return 1;
    }
}

function productQuantityValidity() {
    var name = document.getElementById("product-quantity");
    if (!checkNumber(name)) {
        document.getElementById("product-quantity-validity").innerHTML = "Non valida";
        return 0;
    } else {
        document.getElementById("product-quantity-validity").innerHTML = "";
        return 1;
    }
}