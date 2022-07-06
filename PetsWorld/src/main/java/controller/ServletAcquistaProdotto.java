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


@WebServlet("/ServletAcquistaProdotto")
public class ServletAcquistaProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletAcquistaProdotto(){
		super();
	}

	@SuppressWarnings("removal")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		String id = request.getParameter("id");
		int ID = Integer.parseInt(id);
		String azione= request.getParameter("azione");
		int esaurimento=0;
		HttpSession sessione = request.getSession(false);
		int quantity = ((Integer)sessione.getAttribute("quantita_product_page")).intValue();
		Carrello carrello = new Carrello();
		carrello = (Carrello) sessione.getAttribute("carrello");
		
		if(azione.equals("aumento"))
		{
			quantity+=1;
			sessione.setAttribute("quantita_product_page", new Integer(quantity));
				
			JSONObject json = new JSONObject();
			json.put("quantita_temporanea", quantity);
			response.getWriter().print(json.toString());
		}
		
		else if(azione.equals("diminuzione"))
		{
			if(quantity>1)
			{
			quantity-=1;
			sessione.setAttribute("quantita_product_page", new Integer(quantity));
			
			JSONObject json = new JSONObject();
			json.put("quantita_temporanea", quantity);
			response.getWriter().print(json.toString());
			}
		}
		
		else if(azione.equals("acquisto"))
		{
			try {
			Prodotto prodotto = new Prodotto ();
			ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
			prodotto = prodottoImp.doRetrieveByKey(ID);
			int quantita = prodottoImp.restituisciQuantita(prodotto.getIdProdotto());
			int quantitaProdottoCarrello = 0;
			ArrayList<Prodotto> prodotti = carrello.getProdotti();
			int i=0;
			
			for (; i<prodotti.size(); i++)
			{
				if(prodotto.getIdProdotto() == prodotti.get(i).getIdProdotto())
				{
					quantitaProdottoCarrello = prodotti.get(i).getQuantita();
					if(quantita >= quantitaProdottoCarrello+quantity)
					{
						quantita=prodotti.get(i).getQuantita() + quantity;
						prodotti.get(i).setQuantita(quantita);
						break;
					}
					else
					{
						esaurimento=1;
						break;
					}
				}
			}
			
			if(i >= prodotti.size())
			{
				if(quantita>=quantity)
				{
					prodotto.setQuantita(quantity);
					carrello.addProdotto(prodotto);
				}
				else
				{
					esaurimento=1;
				}
			}

			carrello.setPrezzoTotale(prodotto.getPrezzo()*quantity);	
			
			JSONObject json = new JSONObject();
			json.put("number", carrello.getQuantita());
			json.put("quantita_temporanea", quantity);
			json.put("esaurimento", esaurimento);
			json.put("quantita_prodotto_carrello", quantitaProdottoCarrello);
			json.put("quantita_prodotto_db", quantita);
			response.getWriter().print(json.toString());
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}	
}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
