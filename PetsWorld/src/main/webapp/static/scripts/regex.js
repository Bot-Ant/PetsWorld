function checkName(input) {
    var name = /^[A-Za-z]+((\s)?((\'|\-|\.)?([A-Za-z])+))*$/;
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



// functions used in user pages

function checkNumber(input) {
    var name = /^([0-9])+$/;
    if (input.value.match(name)) {
        return true;
    } else {
        return  false;
    }
}

function checkAddressNumber(input) {
    var name = /^([0-9]|[1-9][0-9]|[1-9][0-9][0-9])+$/;
    if (input.value.match(name)) {
        return true;
    } else {
        return  false;
    }
}

function checkAddressProvince(input) {
    var name = /^([A-Z][A-Z])+$/;
    if (input.value.match(name)) {
        return true;
    } else {
        return  false;
    }
}

function checkCreditCardNumber(input) {
    var name = /^([0-9]{16})+$/;
    if (input.value.match(name)) {
        return true;
    } else {
        return  false;
    }
}

function checkMonthNumber(input) {
    var name = /^(0[1-9]|1[0-2])$/;
    if (input.value.match(name)) {
        return true;
    } else {
        return  false;
    }
}

function checkYearNumber(input) {
    var name = /^\d{4}$/;
    if (input.value.match(name)) {
        return true;
    } else {
        return  false;
    }
}