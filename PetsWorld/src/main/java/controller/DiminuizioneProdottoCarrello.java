package controller;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.json.JSONException;
import org.json.JSONObject;

import model.beans.Carrello;
import model.beans.Prodotto;


@WebServlet("/DiminuizioneProdottoCarrello")
public class DiminuizioneProdottoCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public DiminuizioneProdottoCarrello(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String id = request.getParameter("id");
		int ID = Integer.parseInt(id);

		Carrello carrello = new Carrello();
		HttpSession sessione = request.getSession(false);
		if (sessione != null)
		{
			 carrello = (Carrello) sessione.getAttribute("carrello");
		}
		
		ArrayList<Prodotto> prodotti = carrello.getProdotti();
		
		int codiceDiminuzione = -1;	
		for(int i=0; i<prodotti.size();i++)
		{
			if((prodotti.get(i).getIdProdotto() == ID))
				codiceDiminuzione = i;
		}
		
		if(codiceDiminuzione != -1)
		{
			Prodotto prodotto1 = new Prodotto();
			for(int i=0; i<prodotti.size(); i++)
			{
				if(i == codiceDiminuzione)
				{
					prodotto1 = prodotti.get(i);					
				}
			}

				int i=0;
				for(; i<prodotti.size(); i++)
				{
					if(ID == prodotti.get(i).getIdProdotto())
					{
							if(prodotti.get(i).getQuantita() > 1)
							{
								int quantita = prodotti.get(i).getQuantita();
								quantita = quantita - 1 ;
								prodotti.get(i).setQuantita(quantita);
								carrello.setPrezzoTotaleRimozione(prodotto1.getPrezzo());
							}
						}
					}
				
				JSONObject json = new JSONObject();
				try {
					
					String riferimento = prodotto1.getIdProdotto() + "_quantita";
					String riferimento2 = prodotto1.getIdProdotto() + "_demo";
					json.put("riferimento", riferimento);
					json.put("riferimento2", riferimento2);
					json.put("quantita", prodotto1.getQuantita());
					json.put("totale", carrello.getQuantita());
					DecimalFormat df= new DecimalFormat(".00");
					json.put("prezzoTot", df.format(carrello.getPrezzoTotale()));
					System.out.print(df.format(carrello.getPrezzoTotale()));

					
				} catch (JSONException e) {
					System.out.println("Eccezione numero elementi carrello");
					e.printStackTrace();
				}
				response.getWriter().print(json.toString());
		}
		else
				
			System.out.println("Errore funzione getIndexDiUnProdotto");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
