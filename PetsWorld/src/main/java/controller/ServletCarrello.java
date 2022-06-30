package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DecimalFormat;
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
		int esaurimento=0;
		Carrello carrello = new Carrello();
		HttpSession sessione = request.getSession(false);
		if (sessione != null)
		{
			 carrello = (Carrello) sessione.getAttribute("carrello");
		}
		
		try
		{
		Prodotto prodotto = new Prodotto ();
		ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		prodotto = prodottoImp.doRetrieveByKey(ID);
		int quantita = prodottoImp.restituisciQuantita(prodotto.getIdProdotto());
		
		ArrayList<Prodotto> prodotti = carrello.getProdotti();
		int i=0;
		
		for (; i<prodotti.size(); i++)
		{
			if(prodotto.getIdProdotto() == prodotti.get(i).getIdProdotto())
			{
					int quantitaProdottoCarrello = prodotti.get(i).getQuantita();
					if(quantita > quantitaProdottoCarrello)
					{
						quantita=prodotti.get(i).getQuantita() + 1;
						prodotti.get(i).setQuantita(quantita);
						break;
					}
					else
					{
						carrello.setPrezzoTotaleRimozione(prodotti.get(i).getPrezzo());
						esaurimento=1;
						break;
					}
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
			json.put("esaurimento", esaurimento);
			String riferimento = prodotto.getIdProdotto() + "_demo";
			json.put("riferimento", riferimento);
		} catch (JSONException e) {
			System.out.println("Eccezione numero elementi carrello");
			e.printStackTrace();
		}
		
		response.getWriter().print(json.toString());
		}	catch (SQLException e1) {
			e1.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}