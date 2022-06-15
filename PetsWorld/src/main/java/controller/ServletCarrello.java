package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.json.JSONException;
import org.json.JSONObject;

import model.beans.Prodotto;
import model.beans.Carrello;
import model.daoImplementation.ProdottoImp;
import model.daoInterface.ProdottoDao;

@WebServlet("/ServletCarrello")
public class ServletCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletCarrello(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		int ID = Integer.parseInt(id);
		Carrello carrello = new Carrello();
		HttpSession sessione = request.getSession(false);
		if (sessione != null)
		{
			 carrello = (Carrello) sessione.getAttribute("carrello");
		}
		
		Prodotto prodotto = new Prodotto ();
		ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		
		try {
			prodotto = prodottoImp.doRetrieveByKey(ID);
		} catch (SQLException e) {
			System.out.println("Errore ricerca prodotto nel db");
			e.printStackTrace();
		} 
		
		ArrayList<Prodotto> prodotti = carrello.getProdotti();
		int i=0;
		for (; i<prodotti.size(); i++)
		{
			if(prodotto.getIdProdotto() == prodotti.get(i).getIdProdotto())
			{
					int quantita=prodotti.get(i).getQuantita() + 1;
					prodotti.get(i).setQuantita(quantita);
					carrello.setProdotti(prodotti);
					break;
				}
		}
		
		if(i >= prodotti.size())
		{
			prodotto.setQuantita(1);
			carrello.addProdotto(prodotto);
		}
		carrello.setPrezzoTotale(prodotto.getPrezzo());		
		
		response.setContentType("application/json");
		JSONObject json = new JSONObject();
		try {
			json.put("number", carrello.getQuantita());
		} catch (JSONException e) {
			System.out.println("Eccezione numero elementi carrello");
			e.printStackTrace();
		}
		
		response.getWriter().print(json.toString());
}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}