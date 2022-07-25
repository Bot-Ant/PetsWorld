/**
 * 
 */
function aggiungiAlCarrelloDaIndex(id, sezione)
{
	var url = "ServletCarrello" + "?id=" + encodeURIComponent(id); //metto url passando come parametro id del prodotto e sezione
	//var url = 'ServletCarrello?id=' + encodeURIComponent(id);
	var xhr = new XMLHttpRequest();
	xhr.onreadystatechange = //alla risposta della servlet
	function() 
	{
		if(xhr.readyState == 4 && xhr.status == 200)
		{
			var response = JSON.parse(xhr.responseText); //stringa che contiene la risposta da parte del server
			updateCartBadgeValue(response.number);
			var stringa=response.riferimento;
			if(response.esaurimento==1)
			{
				if(sezione==1)
				{
					document.getElementById(stringa+"_1").style.visibility = "visible"; //COSI ESCE TERMINATO AFFIANCO AL PRODOTTO QUANDO SI ARRIVA ALLA FINE DELLA QUANTITA
				}
				if(sezione==2)
				{
					document.getElementById(stringa+"_2").style.visibility = "visible"; //COSI ESCE TERMINATO AFFIANCO AL PRODOTTO QUANDO SI ARRIVA ALLA FINE DELLA QUANTITA
				}
				if(sezione==3)
				{
					document.getElementById(stringa+"_3").style.visibility = "visible"; //COSI ESCE TERMINATO AFFIANCO AL PRODOTTO QUANDO SI ARRIVA ALLA FINE DELLA QUANTITA
				}
			}
		}
	}
	xhr.open("GET",url,true);
	xhr.send(null);
}
	