function setUserSectionActive(id){
    document.getElementById(id).className = "active-link";
}

function editButtons(id) {
    const parentid = "user-element-" + id + "-buttons";
    const editbuttonid = "user-element-" + id + "-edit-button";
    const deletebuttonid = "delete-button-" + id;
    editToSaveButton(editbuttonid,parentid);
    addDeleteButton(deletebuttonid,parentid)
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

function editUserAddress(id) {
    editButtons(id);
    document.getElementById("address-name-" + id).className = "input-field user-element-name";
    document.getElementById("address-number-" + id).className = "input-field user-element-name number";
    document.getElementById("citta-" + id).className = "input-field";
    document.getElementById("provincia-" + id).className = "input-field";
    document.getElementById("cap-" + id).className = "input-field number";
}

function editUserPayMethod(id) {
    editButtons(id);
    document.getElementById("pay-method-number-" + id).className = "input-field user-element-name";
    document.getElementById("owner-" + id).className = "input-field";
    document.getElementById("month-" + id).className = "input-field number";
    document.getElementById("year-" + id).className = "input-field number";
}

function activateNewUserElementForm() {
    document.getElementById("top-separator").className = " ";
    document.getElementById("new-user-element").className = "user-element-line row";
}

