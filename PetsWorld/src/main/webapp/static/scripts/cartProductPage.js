/**
 * 
 */
	function AumentoQuantita(id, azione)
	{	
		var url = "ServletAcquistaProdotto" + "?id=" + encodeURIComponent(id) +"&azione=" + encodeURIComponent(azione);
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = 
			function()
			{
				if(xhr.readyState == 4 && xhr.status == 200)
				{
					var response = JSON.parse(xhr.responseText); 
					document.getElementById("quantita").innerHTML = response.quantita_temporanea;
				}
			}
			xhr.open("GET",url,true);
			xhr.send(null);
	}
	
	function DiminuzioneQuantita(id, azione)
	{
		var url = "ServletAcquistaProdotto" + "?id=" + encodeURIComponent(id) +"&azione=" + encodeURIComponent(azione);
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = 
			function()
			{
				if(xhr.readyState == 4 && xhr.status == 200)
				{
					var response = JSON.parse(xhr.responseText); 
					document.getElementById("quantita").innerHTML = response.quantita_temporanea;
				}
			}
			xhr.open("GET",url,true);
			xhr.send(null);	
	}
	
	function AggiungiAlCarrello(id, azione)
	{
		var url = "ServletAcquistaProdotto" + "?id=" + encodeURIComponent(id) +"&azione=" + encodeURIComponent(azione);
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = //alla risposta della servlet
			function() //aumenta di 1 unità il carrello
			{
				if(xhr.readyState == 4 && xhr.status == 200)
				{
					var response = JSON.parse(xhr.responseText); //stringa che contiene la risposta da parte del server
					document.getElementById("quantita_carrello").innerHTML = response.number;
					if(response.esaurimento==1)
					{
						document.getElementById("demo").innerHTML = "Impossibile inserire "+ response.quantita_temporanea +" prodotti"; 
						document.getElementById("demo_1").innerHTML = "Quantita totale disponibile:"+response.quantita_prodotto_db+" ("+response.quantita_prodotto_carrello+" in carrello)"; 
					}
					else
					{
						document.getElementById("demo").innerHTML = ""; 
						document.getElementById("demo_1").innerHTML = ""; 
					}
				}
			}
			xhr.open("GET",url,true);
			xhr.send(null);
	}		