function activatePaymentMethod(){
    document.getElementById("empty-payment-method").style.display = "none";
    document.getElementById("payment-method-box").style.display = "flex";
}

function activateOrderButton(){
    document.getElementById("empty-confirm-order").style.display = "none";
    document.getElementById("confirm-order-box").style.display = "flex";
}

function verifyAddressInfo(){
    // fare i controlli sui campi con regex
    // e segnare i campi errati o mancanti
    var status = 1; //parte 1 o true e viene settato a zero o false
    if (status) {
        activatePaymentMethod();
    }
}

function verifyPaymentMethodInfo(){
    // fare i controlli sui campi con regex
    // e segnare i campi errati o mancanti
    var status = 1;
    if (status) {
        activateOrderButton();
    }
}