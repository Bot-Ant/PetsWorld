function setUserSectionActive(id){
    document.getElementById(id).className = "active-link";
}

function editToSaveButton(id,parentid) {
    const newbutton = document.createElement("button");
    newbutton.setAttribute("id", id);
    newbutton.setAttribute("class", "active-save-button");
    newbutton.innerHTML = "Salva"
    const parent = document.getElementById(parentid);
    const oldbutton = document.getElementById(id);
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
    editToSaveButton(id,parentid);
    document.getElementById("nome").className = "input-field";
    document.getElementById("cognome").className = "input-field";
    document.getElementById("codiceFiscale").className = "input-field";
    document.getElementById("cellulare").className = "input-field";
}

function editUserCredentials(id,parentid) {
    editToSaveButton(id,parentid);
    document.getElementById("email").className = "input-field";
    document.getElementById("password").className = "input-field";
}

function activateNewAddressForm() {
    document.getElementById("top-separator").className = " ";
    document.getElementById("new-address").className = "address-line row";
}

function editUserAddress(id) {
    const buttonid = "address-" + id + "-edit-button";
    const parentid = "address-" + id + "-buttons";
    editToSaveButton(buttonid,parentid);
    addDeleteButton("delete-button-" + id,parentid)
    document.getElementById("address-name-" + id).className = "input-field address-name name";
    document.getElementById("address-number-" + id).className = "input-field address-name number";
    document.getElementById("citta-" + id).className = "input-field";
    document.getElementById("provincia-" + id).className = "input-field";
    document.getElementById("cap-" + id).className = "input-field number";
}

function activateNewPayMethodForm() {
    document.getElementById("top-separator").className = " ";
    document.getElementById("new-pay-method").className = "pay-method-line row";
}

function editUserPayMethod(id) {
    const buttonid = "pay-method-" + id + "-edit-button";
    const parentid = "pay-method-" + id + "-buttons";
    editToSaveButton(buttonid,parentid);
    addDeleteButton("delete-button-" + id,parentid)
    document.getElementById("pay-method-number-" + id).className = "input-field pay-method-number name";
    document.getElementById("owner-" + id).className = "input-field";
    document.getElementById("month-" + id).className = "input-field number";
    document.getElementById("year-" + id).className = "input-field number";
}