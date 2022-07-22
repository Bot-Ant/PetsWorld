function setUserSectionActive(id){
    document.getElementById(id).className = "active-link";
}

function editButtons(id, funcname) {
    const parentid = "user-element-" + id + "-buttons";
    const editbuttonid = "user-element-" + id + "-edit-button";
    const deletebuttonid = "delete-button-" + id;
    editToSaveButton(id,editbuttonid,parentid, funcname);
    addDeleteButton(deletebuttonid,parentid)
}

function editToSaveButton(id,fullid,parentid,funcname) {
    const newbutton = document.createElement("input");
    newbutton.setAttribute("type", "button");
    newbutton.setAttribute("id", fullid);
    newbutton.setAttribute("class", "active-save-button");
    newbutton.setAttribute("value", "Salva");
    newbutton.setAttribute("onclick", funcname + "('" + id + "')");
    const parent = document.getElementById(parentid);
    const oldbutton = document.getElementById(fullid);
    parent.replaceChild(newbutton, oldbutton);
}

function addDeleteButton(id,parentid) {
    const newbutton = document.createElement("button");
    newbutton.setAttribute("id", id);
    newbutton.setAttribute("class", "active-save-button delete-button");
    newbutton.innerHTML = "Elimina"
    const parent = document.getElementById(parentid);
    parent.appendChild(newbutton);
}

function editUserData(id,parentid) {
    editToSaveButton("",id,parentid,"submitUpdatedUserData");
    document.getElementById("nome").className = "input-field";
    document.getElementById("cognome").className = "input-field";
    document.getElementById("codiceFiscale").className = "input-field";
    document.getElementById("cellulare").className = "input-field";
}

function editUserCredentials(id,parentid) {
    editToSaveButton("",id,parentid,"submitUpdatedUserCredentials");
    document.getElementById("email").className = "input-field";
    document.getElementById("password").className = "input-field";
}

function editUserAddress(id) {
    editButtons(id,"submitUpdatedAddress");
    document.getElementById("address-name-" + id).className = "input-field user-element-name";
    document.getElementById("address-number-" + id).className = "input-field user-element-name number";
    document.getElementById("address-city-" + id).className = "input-field";
    document.getElementById("address-province-" + id).className = "input-field";
    document.getElementById("address-cap-" + id).className = "input-field number";
}

function editUserPayMethod(id) {
    editButtons(id, "submitUpdatedPayMethod");
    document.getElementById("pay-method-number-" + id).className = "input-field user-element-name";
    document.getElementById("pay-method-owner-" + id).className = "input-field";
    document.getElementById("pay-method-month-" + id).className = "input-field number";
    document.getElementById("pay-method-year-" + id).className = "input-field number";
    document.getElementById("pay-method-cvv-" + id).className = "input-field number";
}

function activateNewUserElementForm() {
    document.getElementById("top-separator").className = " ";
    document.getElementById("new-user-element").className = "user-element-line row";
}

/***************************************
 * 
 * Funzioni per il submit dei form utente
 * 
 ***************************************/

function submitUpdatedUserData(id) {
    if (checkUserDataFields()) {
        //submit del form
    }
}

function submitUpdatedUserCredentials(id) {
    if (checkUserCredentialsFields()) {
        //submit del form
    }
}

function submitUpdatedAddress(id) {
    if (checkAddressFields(id)) {
	var name = document.getElementById("address-name-" + id);
    
    var number = document.getElementById("address-number-" + id);
    
    var city = document.getElementById("address-city-" + id);
    
    var prov = document.getElementById("address-province-" + id);
    
    var cap = document.getElementById("address-cap-" + id);
   
        var url = "ServletUtente" + "?id=" + encodeURIComponent(id) + "&name=" + encodeURIComponent(name.value) + "&number=" + encodeURIComponent(number.value) + "&city=" + encodeURIComponent(city.value) + "&prov=" + encodeURIComponent(prov.value) + "&cap=" + encodeURIComponent(cap.value); //metto url passando come parametro id del prodotto
	//var url = 'AumentoProdottoCarrello?id=' + encodeURIComponent(id); 
	
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = //alla risposta della servlet
	function () 
	{

	}
	xhr.open("GET",url,true);
	xhr.send(null);
}
}
function submitNewAddress(id) {
    if (checkAddressFields(id)) {
        //submit del form
    }
}

function submitUpdatedPayMethod(id) {
    if (checkPayMethodFields(id)) {
	
    var number = document.getElementById("pay-method-number-" + id);
    
    var owner = document.getElementById("pay-method-owner-" + id);
    
    var month = document.getElementById("pay-method-month-" + id);
   
    var year= document.getElementById("pay-method-year-" + id);
   
    var cvv = document.getElementById("pay-method-cvv-" + id);
    
    var url = "ServletModificaPay" + "?id=" + encodeURIComponent(id) + "&number=" + encodeURIComponent(number.value) + "&owner=" + encodeURIComponent(owner.value) + "&month=" + encodeURIComponent(month.value)  + "&year=" + encodeURIComponent(year.value) + "&cvv=" + encodeURIComponent(cvv.value); //metto url passando come parametro id del prodotto
	//var url = 'AumentoProdottoCarrello?id=' + encodeURIComponent(id); 
	
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = //alla risposta della servlet
	function () 
	{

	}
	xhr.open("GET",url,true);
	xhr.send(null);
}
}




function submitNewPayMethod(id) {
    if (checkPayMethodFields(id)) {
  
  
    }
}

/***************************************
 * 
 * Funzioni per il controllo dei campi
 * 
 ***************************************/

//funzione per il controllo dei campi per i dati utente
function checkUserDataFields() {
    var status = 1;
    if (!nameValidity()) {
        status = 0;
    }
    if (!surnameValidity()) {
        status = 0;
    }
    if (!taxCodeValidity()) {
        status = 0;
    }
    if (!phoneNumberValidity()) {
        status = 0;
    }
    return status;
}

function checkUserCredentialsFields() {
    var status = 1;
    if (!emailValidity()) {
        status = 0;
    }
    if (!passwordValidity()) {
        status = 0;
    }
    return status;
}


//funzione per il controllo dei campi per l'indirizzo
function checkAddressFields(id) {
    var status = 1;
    if (!addressNameValidity(id)) {
        status = 0;
    }
    if (!addressNumberValidity(id)) {
        status = 0;
    }
    if (!addressCityValidity(id)) {
        status = 0;
    }
    if (!addressProvinceValidity(id)) {
        status = 0;
    }
    if (!addressCapValidity(id)) {
        status = 0;
    }
    return status;
}

function addressNameValidity(id) {
    var name = document.getElementById("address-name-" + id);
    if (!checkName(name)) {
        document.getElementById("address-name-" + id + "-validity").innerHTML = "Formato indirizzo non valido";
        return 0;
    } else {
        document.getElementById("address-name-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

function addressNumberValidity(id) {
    var name = document.getElementById("address-number-" + id);
    if (!checkAddressNumber(name)) {
        document.getElementById("address-number-" + id + "-validity").innerHTML = "Formato civico non valido";
        return 0;
    } else {
        document.getElementById("address-number-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

function addressCityValidity(id) {
    var name = document.getElementById("address-city-" + id);
    if (!checkName(name)) {
        document.getElementById("address-city-" + id + "-validity").innerHTML = "Nome città non valido";
        return 0;
    } else {
        document.getElementById("address-city-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

function addressProvinceValidity(id) {
    var name = document.getElementById("address-province-" + id);
    if (!checkAddressProvince(name)) {
        document.getElementById("address-province-" + id + "-validity").innerHTML = "Il formato è PP";
        return 0;
    } else {
        document.getElementById("address-province-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

function addressCapValidity(id) {
    var name = document.getElementById("address-cap-" + id);
    if (!checkNumber(name)) {
        document.getElementById("address-cap-" + id + "-validity").innerHTML = "Formato cap non valido";
        return 0;
    } else {
        document.getElementById("address-cap-" + id + "-validity").innerHTML = "";
        return 1;
    }
}




//funzione per il controllo dei campi per il metodo di pagamento
function checkPayMethodFields(id) {
    var status = 1;
    if (!methodNumberValidity(id)) {
        status = 0;
    }
    if (!methodOwnerValidity(id)) {
        status = 0;
    }
    if (!methodMonthValidity(id)) {
        status = 0;
    }
    if (!methodYearValidity(id)) {
        status = 0;
    }
    return status;
}

function methodNumberValidity(id) {
    var name = document.getElementById("pay-method-number-" + id);
    if (!checkCreditCardNumber(name)) {
        document.getElementById("pay-method-number-" + id + "-validity").innerHTML = "Formato numero non valido";
        return 0;
    } else {
        document.getElementById("pay-method-number-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

function methodOwnerValidity(id) {
    var name = document.getElementById("pay-method-owner-" + id);
    if (!checkName(name)) {
        document.getElementById("pay-method-owner-" + id + "-validity").innerHTML = "Formato nome non accettato";
        return 0;
    } else {
        document.getElementById("pay-method-owner-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

function methodMonthValidity(id) {
    var name = document.getElementById("pay-method-month-" + id);
    if (!checkMonthNumber(name)) {
        document.getElementById("pay-method-month-" + id + "-validity").innerHTML = "Il formato deve essere MM";
        return 0;
    } else {
        document.getElementById("pay-method-month-" + id + "-validity").innerHTML = "";
        return 1;
    }
}

function methodYearValidity(id) {
    var name = document.getElementById("pay-method-year-" + id);
    if (!checkYearNumber(name)) {
        document.getElementById("pay-method-year-" + id + "-validity").innerHTML = "Il formato deve essere YYYY";
        return 0;
    } else {
        document.getElementById("pay-method-year-" + id + "-validity").innerHTML = "";
        return 1;
    }
    }