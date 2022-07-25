function setAdminSectionActive(id){
    document.getElementById(id).className = "active-link";
}

function editProductData(id) {
    document.getElementById(id + "-price").className = "input-field";
    document.getElementById(id + "-quantity").className = "input-field";
    
    const newbutton = document.createElement("button");
    newbutton.setAttribute("id", "save-button-" + id);
    newbutton.setAttribute("class", "active-save-button");
    newbutton.innerHTML = "Salva";

    const parent = document.getElementById("edit-section-" + id);
    const oldbutton = document.getElementById("edit-button-" + id);
    parent.replaceChild(newbutton, oldbutton);
}


function submitNewProduct() {
    if (checkNewProductFields()) {
	
        console.log("entrato");
        var nome = document.getElementById("product-name");
        console.log(nome.value);

        var animale = findSelectedAnimal();
        console.log(animale.value);

        var tipo = findSelectedType();
        console.log(tipo);

        var prezzo = document.getElementById("product-price");
        console.log(prezzo.value);

        var iva = document.getElementById("product-tax");
        console.log(iva.value);

        var quantita = document.getElementById("product-quantity");
        console.log(quantita.value);

        var peso = document.getElementById("product-weight");
        console.log(peso.value);

        var dimensione = document.getElementById("product-size");
        console.log(dimensione.value);

        var colore = document.getElementById("product-color");
        console.log(colore.value);

        var dataScadenza = document.getElementById("product-expiry-date");
        console.log(dataScadenza.value);

        var descrizione = document.getElementById("product-description");
        console.log(descrizione.value);

        var foto = document.getElementById("product-picture");
        console.log(foto.value);

        var url = "ServletAggiuntaProdotto" + "?product-name=" + encodeURIComponent(nome.value) + "&animale=" + encodeURIComponent(animale.value) + "&tipo=" + encodeURIComponent(tipo) + "&product-price=" + encodeURIComponent(prezzo.value) + "&product-tax=" + encodeURIComponent(iva.value) + "&product-quantity=" + encodeURIComponent(quantita.value)+ "&product-weight=" + encodeURIComponent(peso.value)+  "&product-description=" + encodeURIComponent(descrizione.value)+ "&product-picture=" + encodeURIComponent(foto.value)+ "&product-size=" + encodeURIComponent(dimensione.value)+ "&product-color=" + encodeURIComponent(colore.value)+ "&product-expiry-date=" + encodeURIComponent(dataScadenza.value); 

        console.log(url);
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = //alla risposta della servlet
        function () 
        {
			if(xhr.readyState == 4 && xhr.status == 200){
        
            redirectToPage("adminAccount.jsp");
            }
        }
        xhr.open("GET",url,true);
        xhr.send(null);    
    }
}





//funzione per il controllo dei campi del nuovo prodotto
function checkNewProductFields() {
    var status = 1;
    if (!productNameValidity()) {
        status = 0;
    }
    if (!productTypeValidity()) {
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

function findSelectedAnimal(){
    var animale;
    if(document.getElementById('cane').checked) {
        animale = document.getElementById('cane');
    }
    else if(document.getElementById('gatto').checked) {
        animale = document.getElementById('gatto');
    }
    else if(document.getElementById('pesci').checked) {
        animale = document.getElementById('pesci');
    }
    else if(document.getElementById('volatili').checked) {
        animale = document.getElementById('volatili');
    }
    else if(document.getElementById('piccolianimali').checked) {
        animale = document.getElementById('piccolianimali');
    }
    else {
        animale = false;
    }
    return animale;
}

function findSelectedType(){
    var tipo = "";
    if(document.getElementById('alimenti').checked) {
        tipo = tipo + document.getElementById('alimenti').value + " ";
    }
    if(document.getElementById('cibo-umido').checked) {
        tipo = tipo + document.getElementById('cibo-umido').value + " ";
    }
    if(document.getElementById('crocchette').checked) {
        tipo = tipo + document.getElementById('crocchette').value + " ";
    }
    if(document.getElementById('salute').checked) {
        tipo = tipo + document.getElementById('salute').value + " ";
    }
    if(document.getElementById('tappetini').checked) {
        tipo = tipo + document.getElementById('tappetini').value + " ";
    }
    if(document.getElementById('antiparassitario-spot-on').checked) {
        tipo = tipo + document.getElementById('antiparassitario-spot-on').value + " ";
    }
    if(document.getElementById('antiparassitario-collare').checked) {
        tipo = tipo + document.getElementById('antiparassitario-collare').value + " ";
    }
    if(document.getElementById('accessori').checked) {
        tipo = tipo + document.getElementById('accessori').value + " ";
    }
    if(document.getElementById('guinzagli').checked) {
        tipo = tipo + document.getElementById('guinzagli').value + " ";
    }
    if(document.getElementById('cucce').checked) {
        tipo = tipo + document.getElementById('cucce').value + " ";
    }
    if(document.getElementById('ciotole').checked) {
        tipo = tipo + document.getElementById('ciotole').value + " ";
    }
    if(document.getElementById('giochi').checked) {
        tipo = tipo + document.getElementById('giochi').value + " ";
    }
    if(document.getElementById('intrattenimento').checked) {
        tipo = tipo + document.getElementById('intrattenimento').value + " ";
    }
    return tipo;
}

function checkSelectedType(){
    if(document.getElementById('alimenti').checked) {
        return true;
    }
    else if(document.getElementById('cibo-umido').checked) {
        return true;
    }
    else if(document.getElementById('crocchette').checked) {
        return true;
    }
    else if(document.getElementById('salute').checked) {
        return true;
    }
    else if(document.getElementById('tappetini').checked) {
        return true;
    }
    else if(document.getElementById('antiparassitario-spot-on').checked) {
        return true;
    }
    else if(document.getElementById('antiparassitario-collare').checked) {
        return true;
    }
    else if(document.getElementById('accessori').checked) {
        return true;
    }
    else if(document.getElementById('guinzagli').checked) {
        return true;
    }
    else if(document.getElementById('cucce').checked) {
        return true;
    }
    else if(document.getElementById('ciotole').checked) {
        return true;
    }
    else if(document.getElementById('giochi').checked) {
        return true;
    }
    else if(document.getElementById('intrattenimento').checked) {
        return true;
    } else {
        return false;
    }
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

function productTypeValidity() {
    if (!checkSelectedType()) {
        document.getElementById("product-type-validity").innerHTML = "Seleziona almeno un tipo";
        return 0;
    } else {
        document.getElementById("product-type-validity").innerHTML = "";
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