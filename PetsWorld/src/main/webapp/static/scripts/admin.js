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

function submitNewProduct() {
    if (checkNewProductFields()) {
        console.log("entrato");
        var nome = document.getElementById("product-name");
        console.log(nome.value);

        var animale = findSelectedAnimal();
        console.log(animale.value);

        var tipo = document.getElementById("alimenti");
        console.log(tipo.value);

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

        var url = "ServletAggiuntaProdotto" + "?product-name=" + encodeURIComponent(nome.value) + "&animale=" + encodeURIComponent(animale.value) + "&tipo=" + encodeURIComponent(tipo.value) + "&product-price=" + encodeURIComponent(prezzo.value) + "&product-tax=" + encodeURIComponent(iva.value) + "&product-quantity=" + encodeURIComponent(quantita.value)+ "&product-weight=" + encodeURIComponent(peso.value)+  "&product-description=" + encodeURIComponent(descrizione.value)+ "&product-picture=" + encodeURIComponent(foto.value); 
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