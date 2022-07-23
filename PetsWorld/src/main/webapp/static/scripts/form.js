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



function nameValidity() {
    var name = document.getElementById("nome");
    if (!checkName(name)) {
        document.getElementById("name-validity").innerHTML = "Formato nome non valido";
        return 0;
    } else {
        document.getElementById("name-validity").innerHTML = "";
    }
}

function surnameValidity() {
    var surname = document.getElementById("cognome");
    if (!checkName(surname)) {
        document.getElementById("surname-validity").innerHTML = "Formato cognome non valido";
        return 0;
    } else {
        document.getElementById("surname-validity").innerHTML = "";
    }
}

function emailValidity() {
    var email = document.getElementById("email");
    if (!checkEmail(email)) {
        document.getElementById("email-validity").innerHTML = "Formato email non valido";
        return 0;
    } else {
        document.getElementById("email-validity").innerHTML = "";
    }
}

function passwordValidity() {
    var password = document.getElementById("password");
    if (!checkPassword(password)) {
        document.getElementById("password-validity").innerHTML = "La password deve contenere almeno 8 caratteri"; 
        document.getElementById("password-validity").style.color = "var(--accent-color)";
        return 0;
    } else {
        document.getElementById("password-validity").innerHTML = "Password valida";
        document.getElementById("password-validity").style.color = "var(--main-color)";
    }
}

function taxCodeValidity() {
    var code = document.getElementById("codiceFiscale");
    if (!checkTaxCode(code)) {
        document.getElementById("taxcode-validity").innerHTML = "Formato codice fiscale non valido";  
        return 0;
    } else {
        document.getElementById("taxcode-validity").innerHTML = "";  
    }
}

function phoneNumberValidity() {
    var number = document.getElementById("cellulare");
    if (!checkPhoneNumber(number)) {
        document.getElementById("number-validity").innerHTML = "Formato numero di telefono non valido";
        return 0;
    } else {
        document.getElementById("number-validity").innerHTML = "";
    }
}

function submitRegistration() {
    var status = 1;
    if (!nameValidity()) {
        status = 0;
    }
    if (!surnameValidity()) {
        status = 0;
    }
    if (!emailValidity()) {
        status = 0;
    }
    if (!passwordValidity()) {
        status = 0;
    }
    if (!taxCodeValidity()) {
        status = 0;
    }
       console.log(2);			

    if (!phoneNumberValidity()) {
        status = 0;
    }
    console.log("cao");			

    if (status) {
		
		console.log("ciao");			
		var name = document.getElementById("nome");
	    
	    var surname = document.getElementById("cognome");
	    
	    var email = document.getElementById("email");
	    
	    var pass = document.getElementById("password");
	    
	    var cf = document.getElementById("codiceFiscale");
	    
	   	var cell = document.getElementById("cellulare");

	    var url = "ServletReg" + "?nome=" + encodeURIComponent(name.value) + "&cognome=" + encodeURIComponent(surname.value) + "&email=" + encodeURIComponent(email.value) + "&password=" + encodeURIComponent(pass.value) + "&codiceFiscale=" + encodeURIComponent(cf.value) + "&cellulare=" + encodeURIComponent(cell.value);
		
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = //alla risposta della servlet
		function () 
		{
	
		}
		xhr.open("GET",url,true);
		xhr.send(null);    
		}
		else
		{
			console.log("ciaone");			
		}
}