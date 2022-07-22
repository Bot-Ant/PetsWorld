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
				document.getElementById(stringa2).innerHTML = "Esaurimento scorte nel magazzino";
			}
			else
			{
				document.getElementById(stringa2).innerHTML = "";
			}
			document.getElementById(stringa).innerHTML=response.quantita;
			updateCartBadgeValue(response.totale);
			var prezzo = parseFloat(response.prezzoTot.replace(/,/, '.'));
			document.getElementById("subtotale").innerHTML = " &euro;" + prezzo;
			if (prezzo < 50)
			{
				document.getElementById("spedizione").innerHTML= "&euro;"+"15.00 ";
				document.getElementById("totale").innerHTML= " &euro;"+ (prezzo +15);
			}
			else
			{
				document.getElementById("spedizione").innerHTML= "&euro;"+"0.00 ";
				document.getElementById("totale").innerHTML= " &euro;" + prezzo;
			}
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
			document.getElementById(stringa2).innerHTML = "";
			document.getElementById(stringa).innerHTML=response.quantita;
			updateCartBadgeValue(response.totale);
			var prezzo = parseFloat(response.prezzoTot.replace(/,/, '.'));
			document.getElementById("subtotale").innerHTML = " &euro;"+prezzo;
			if (prezzo < 50)						
			{
				document.getElementById("spedizione").innerHTML= "&euro;"+"15.00 ";
				document.getElementById("totale").innerHTML= " &euro;"+ (prezzo+15);
			}
			else
			{
				document.getElementById("spedizione").innerHTML= " &euro;"+"0.00";
				document.getElementById("totale").innerHTML= " &euro;"+ prezzo;
			}
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
			document.getElementById("subtotale").innerHTML = " &euro;"+prezzo;
			if (prezzo < 50)
			{	
				document.getElementById("spedizione").innerHTML= "&euro;"+"15.00";
				document.getElementById("totale").innerHTML= (prezzo+15);
			}
			else
			{
				document.getElementById("spedizione").innerHTML= "&euro;"+"0.00";
				document.getElementById("totale").innerHTML= prezzo;
			}
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
				document.getElementById(stringa).innerHTML = "Esaurimento scorte nel magazzino";
			}
		}
	}
	xhr.open("GET",url,true);
	xhr.send(null);
}
	
function DeviLoggartiPrima()
{
	document.getElementById("demo").innerHTML="Devi loggarti prima di poter effettuare l'ordine";
}