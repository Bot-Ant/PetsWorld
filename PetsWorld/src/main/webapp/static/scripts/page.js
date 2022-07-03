/**
 * 
 */

// function downloadScripts() {
//     var element = document.createElement("script");
//     element.src = "./static/scripts/form.js";
//     document.body.appendChild(element);
// }

function downloadScripts() {
    downloadScript("user.js");
    downloadScript("form.js");
    downloadScript("cart.js");
}

function downloadScript(script) {
    var element = document.createElement("script");
    element.type = "text/javascript";
    element.src = "./static/scripts/" + script;
    document.body.appendChild(element);
}