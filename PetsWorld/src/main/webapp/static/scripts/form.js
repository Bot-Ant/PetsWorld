/**
 * 
 */

function lowercase(text) {
    let txt = document.getElementById(text);
    txt.value = txt.value.toLowerCase();
}

function uppercase(text) {
    let txt = document.getElementById(text);
    txt.value = txt.value.toUpperCase();
}

function checkName(input) {
    var name = /^([A-Za-z])+$/;
    if (input.value.match(name)) {
        return true;
    } else {
        return  false;
    }
}

function checkEmail(input) {
    var mailformat = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if(input.value.match(mailformat)) {
        return true;
    } else {
        return false;
    }
}

function checkPassword(input) {
    if (input.checkValidity() == false) {
        return false;
    } else {
        return true;
    }
}

function checkTaxCode(input) {
    var code = /^(?:[A-Z][AEIOU][AEIOUX]|[AEIOU]X{2}|[B-DF-HJ-NP-TV-Z]{2}[A-Z]){2}(?:[\dLMNP-V]{2}(?:[A-EHLMPR-T](?:[04LQ][1-9MNP-V]|[15MR][\dLMNP-V]|[26NS][0-8LMNP-U])|[DHPS][37PT][0L]|[ACELMRT][37PT][01LM]|[AC-EHLMPR-T][26NS][9V])|(?:[02468LNQSU][048LQU]|[13579MPRTV][26NS])B[26NS][9V])(?:[A-MZ][1-9MNP-V][\dLMNP-V]{2}|[A-M][0L](?:[1-9MNP-V][\dLMNP-V]|[0L][1-9MNP-V]))[A-Z]$/i;
    if (input.value.match(code)) {
        return true;
    } else {
        return false;
    }
}

function checkPhoneNumber(input) {
    var number = /^(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[1-9](?:(?:[\s.-]?\d{2}){4}|\d{2}(?:[\s.-]?\d{3}){2})$/;
    if (input.value.match(number)) {
        return true;
    } else {
        return false;
    }
}



function nameValidity() {
    var name = document.getElementById("nome");
    if (!checkName(name)) {
        document.getElementById("name-validity").innerHTML = "Formato nome non valido";
    }
}

function surnameValidity() {
    var surname = document.getElementById("cognome");
    if (!checkName(surname)) {
        document.getElementById("surname-validity").innerHTML = "Formato cognome non valido";
    }
}

function emailValidity() {
    var email = document.getElementById("email");
    if (!checkEmail(email)) {
        document.getElementById("email-validity").innerHTML = "Formato email non valido";
    }
}

function passwordValidity() {
    var password = document.getElementById("password");
    if (!checkPassword(password)) {
        document.getElementById("password-validity").innerHTML = "La password deve contenere almeno 8 caratteri";    
    } else if (password.length < 15) {
        document.getElementById("password-validity").innerHTML = "Password poco sicura";
    } else {
        document.getElementById("password-validity").innerHTML = "Password sicura";
    }
}

function taxCodeValidity() {
    var code = document.getElementById("codiceFiscale");
    if (!checkTaxCode(code)) {
        document.getElementById("taxcode-validity").innerHTML = "Formato codice fiscale non valido";  
    }
}

function phoneNumberValidity() {
    var number = document.getElementById("cellulare");
    if (!checkPhoneNumber(number)) {
        document.getElementById("number-validity").innerHTML = "Formato numero di telefono non valido";
    }
}