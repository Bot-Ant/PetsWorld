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
					document.getElementById("quantita_carrello").innerHTML = response.totale;
					document.getElementById("subtotale").innerHTML = response.prezzoTot + " &euro;";
					var prezzo = parseFloat(response.prezzoTot);
					if (prezzo < 50)
						{
							document.getElementById("totale").innerHTML= prezzo+15 + " &euro;";
							document.getElementById("spedizione").innerHTML= "15.0&euro;";
						}
					else
						{
							document.getElementById("spedizione").innerHTML= "0.0&euro;";
							document.getElementById("totale").innerHTML= response.prezzoTot + " &euro;";
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
					document.getElementById("quantita_carrello").innerHTML = response.totale;
					document.getElementById("subtotale").innerHTML = response.prezzoTot + " &euro;";
					var prezzo = parseFloat(response.prezzoTot);
					if (prezzo < 50)						{
							document.getElementById("totale").innerHTML= prezzo+15 + " &euro;";
							document.getElementById("spedizione").innerHTML= "15.0&euro;";

						}
					else
						{
							document.getElementById("spedizione").innerHTML= "0.0&euro;";
							document.getElementById("totale").innerHTML= response.prezzoTot + " &euro;";
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
					document.getElementById("quantita_carrello").innerHTML = response.totale;
					document.getElementById("subtotale").innerHTML = response.prezzoTot + " &euro;";
					var prezzo = parseFloat(response.prezzoTot);
					if (prezzo < 50)
					{
						
						document.getElementById("totale").innerHTML= prezzo+15;
						document.getElementById("spedizione").innerHTML= "15.0&euro;";

					}
					else
					{
						document.getElementById("spedizione").innerHTML= "0.0&euro;";
						document.getElementById("totale").innerHTML= response.prezzoTot;
					}
					
					var totaleElementi = response.totale;
					if(totaleElementi == 0)
					{
						document.getElementById("full").innerHTML ="<h1>il carrello è vuoto</h1>";
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
								document.getElementById("quantita_carrello").innerHTML = response.number;
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