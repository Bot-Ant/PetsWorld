package controller;

import java.io.IOException;
import java.sql.SQLException;
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
import model.daoImplementation.ProdottoImp;
import model.daoInterface.ProdottoDao;


@WebServlet("/AumentoProdottoCarrello")
public class AumentoProdottoCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public AumentoProdottoCarrello(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String id = request.getParameter("id");
		int ID = Integer.parseInt(id);
		int esaurimento=0;
		Carrello carrello = new Carrello();
		HttpSession sessione = request.getSession(false);
		if (sessione != null)
		{
			 carrello = (Carrello) sessione.getAttribute("carrello");
		}
			try {
			Prodotto prodotto = new Prodotto ();
			ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
			prodotto = prodottoImp.doRetrieveByKey(ID);
			int quantita = prodottoImp.restituisciQuantita(prodotto.getIdProdotto());
			
			ArrayList<Prodotto> prodotti = carrello.getProdotti();
			
			for(int i = 0; i<prodotti.size(); i++)
			{
				if(ID == prodotti.get(i).getIdProdotto())
				{
						int quantitaProdottoCarrello = prodotti.get(i).getQuantita();
						if(quantita > quantitaProdottoCarrello)
						{
							quantitaProdottoCarrello = quantitaProdottoCarrello + 1 ;
							prodotti.get(i).setQuantita(quantitaProdottoCarrello);
						}
						else 
						{
							carrello.setPrezzoTotaleRimozione(prodotti.get(i).getPrezzo());
							esaurimento=1;
						}
				}
			}		

			int codiceAumento = -1;	
			for(int i=0; i<prodotti.size();i++)
			{
				if((prodotti.get(i).getIdProdotto() == ID))
					codiceAumento = i;
			}
		
		if(codiceAumento != -1)
		{
			JSONObject json = new JSONObject();
			try {
				
				Prodotto prodotto1 = new Prodotto();
				for(int i=0; i<prodotti.size(); i++)
				{
					if(i == codiceAumento)
					{
						prodotto1 = prodotti.get(i);
						carrello.setPrezzoTotale(prodotto1.getPrezzo());
					}
				}
				
				String riferimento = prodotto1.getIdProdotto() + "_quantita";
				String riferimento2= prodotto1.getIdProdotto() + "_demo";
				json.put("riferimento", riferimento);
				json.put("riferimento2", riferimento2);
				json.put("quantita", prodotto1.getQuantita());
				json.put("totale", carrello.getQuantita());
				DecimalFormat df= new DecimalFormat(".00");
				json.put("prezzoTot", df.format(carrello.getPrezzoTotale()));
				json.put("esaurimento", esaurimento);
			
			} catch (JSONException e) {
				System.out.println("Eccezione numero elementi carrello");
				e.printStackTrace();
			}
			response.getWriter().print(json.toString());
		}
		else
			System.out.println("Errore funzione getIndexDiUnProdotto");
				
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

