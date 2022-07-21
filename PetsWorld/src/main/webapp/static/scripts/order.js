function activatePaymentMethod(){
    document.getElementById("empty-payment-method").style.display = "none";
    document.getElementById("payment-method-box").style.display = "flex";
}

function activateOrderButton(){
    document.getElementById("empty-confirm-order").style.display = "none";
    document.getElementById("confirm-order-box").style.display = "flex";
}



function verifyAddressInfo(){
    var status = 1; //parte 1 o true e viene settato a zero o false
    if (!checkSelection("saved-addresses")) {
        status = 0;
    }
    if (status) {
        activatePaymentMethod();
    }
}

function verifyPaymentMethodInfo(){
    var status = 1; //parte 1 o true e viene settato a zero o false
    if (!checkSelection("saved-payments")) {
        status = 0;
    }
    if (status) {
        activateOrderButton();
    }
}

function checkSelection(id) {
    var select = document.getElementById(id);
    var value = select.options[select.selectedIndex].value;
    console.log(value);
    if (checkIntNumber(value)) {
        return 1;
    } else {
        return 0;
    }
}