/**
 * 
 */

function funzionePiu(id)
{
	var url = "AumentoProdottoCarrello" + "?id=" + encodeURIComponent(id); //metto url passando come parametro id del prodotto
	
	//var url = 'AumentoProdottoCarrello?id=' + encodeURIComponent(id); 
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = //alla risposta della servlet
	function() //aumenta di 1 unità nel carrello
	{
		if(xhr.readyState == 4 && xhr.status == 200)
		{
			var response = JSON.parse(xhr.responseText);
			var stringa=response.riferimento;
			var stringa2=response.riferimento2;
			if(response.esaurimento==1)
			{
				$(stringa2).html("Esaurimento scorte nel magazzino"); //corrisponde a document.getElementById().innerHTML
			}
			else
			{
				$(stringa2).html("");
			}
			$(stringa).html(response.quantita);
			updateCartBadgeValue(response.totale);
			var prezzo = parseFloat(response.prezzoTot.replace(/,/, '.'));
			updatePrices(prezzo);
		}
	}
	xhr.open("GET",url,true);
	xhr.send(null);
}
	
function funzioneMeno(id)
{
	var url = "DiminuizioneProdottoCarrello" + "?id=" + encodeURIComponent(id); //metto url passando come parametro id del prodotto
	//var url = 'DiminuizioneProdottoCarrello?id=' + encodeURIComponent(id); 
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = //alla risposta della servlet
	function() //diminuisce di 1 unità nel carrello
	{
		if(xhr.readyState == 4 && xhr.status == 200)
		{
			var response = JSON.parse(xhr.responseText);
			var stringa=response.riferimento;
			var stringa2=response.riferimento2;
			$(stringa2).html("");
			$(stringa).html(response.quantita);
			updateCartBadgeValue(response.totale);
			var prezzo = parseFloat(response.prezzoTot.replace(/,/, '.'));
			updatePrices(prezzo);
		}
	}
	xhr.open("GET",url,true);
	xhr.send(null);
}
	
function funzioneDel(id)
{
	var url = "RimozioneDaCarrello"+"?id=" + encodeURIComponent(id);
	//var url = 'RimozioneDaCarrello?id=' + encodeURIComponent(id); 
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = //alla risposta della servlet
	function() //rimuovi il prodotto dal carrello
	{
		if(xhr.readyState == 4 && xhr.status == 200)
		{
			var response = JSON.parse(xhr.responseText);
			var stringa= response.riferimento;
			document.getElementById(stringa).remove();
			updateCartBadgeValue(response.totale);
			var prezzo = parseFloat(response.prezzoTot.replace(/,/, '.'));
			updatePrices(prezzo);
			var totaleElementi = response.totale;
			if(totaleElementi == 0)
			{
				const newchild = document.createElement("div");

            	newchild.setAttribute("id", "empty");
            	const h1 = document.createElement("h1");
            	h1.innerHTML = "Il carrello è vuoto"
            	const p = document.createElement("p");
            	p.innerHTML = "Aggiungi prodotti al carrello per visualizzarli in questa sezione."
            	newchild.appendChild(h1);
           		newchild.appendChild(p);

            	const parent = document.getElementById("cart-content");
            	const oldchild = document.getElementById("full");
            	parent.replaceChild(newchild, oldchild);
			}
		}
	}
	xhr.open("GET",url,true);
	xhr.send(null);
}
	
function aggiungiAlCarrello(id)
{
	var url = "ServletCarrello" + "?id=" + encodeURIComponent(id); //metto url passando come parametro id del prodotto
	//var url = 'ServletCarrello?id=' + encodeURIComponent(id);
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = //alla risposta della servlet
	function() //aumenta di 1 unità il carrello
	{
		if(xhr.readyState == 4 && xhr.status == 200)
		{
			var response = JSON.parse(xhr.responseText); //stringa che contiene la risposta da parte del server
			updateCartBadgeValue(response.number);
			var stringa=response.riferimento;
			if(response.esaurimento==1)
			{
				$(stringa).html("Esaurimento scorte nel magazzino");
			}
		}
	}
	xhr.open("GET",url,true);
	xhr.send(null);
}
	
function DeviLoggartiPrima()
{
		document.getElementById("login-error-message").innerHTML = "Devi accedere prima di poter effettuare l'ordine";
}

function updatePrices(prezzo) {
	$("#subtotale").html(" &euro;" + prezzo);
	if (prezzo < 50) {
		$("spedizione").html("&euro;"+"15.00");
		$("totale").html("&euro;"+ (prezzo + 15));
	} else {
		$("spedizione").html("&euro;"+"0.00");
		$("totale").html("&euro;" + prezzo);
	}
}