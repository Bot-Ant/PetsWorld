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

function checkPasswordValidity() {
    var field = document.getElementById("password");
    if (field.checkValidity() == false) {
        document.getElementById("password-validity").innerHTML = "Password non valida"
    } else {
        document.getElementById("password-validity").innerHTML = "Password valida"
    }
}

function checkEmailValidity() {
    var input = document.getElementById("email").value;
    var atpos = input.indexOf("@");
    var dotpos = input.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= input.length) {
        document.getElementById("email-validity").innerHTML = "Email non valida"
    } else {
        document.getElementById("email-validity").innerHTML = "Email valida"
    }
}