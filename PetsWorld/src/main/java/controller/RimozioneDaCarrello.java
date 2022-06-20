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


@WebServlet("/RimozioneDaCarrello")
public class RimozioneDaCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public RimozioneDaCarrello(){
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
		
		int codiceRimozione = -1;	
		for(int i=0; i<prodotti.size();i++)
		{
			if(prodotti.get(i).getIdProdotto() == ID)
				codiceRimozione = i;
		}
		
		JSONObject json = new JSONObject();
		try {
			Prodotto prodotto1 = new Prodotto();
			for(int i=0; i<prodotti.size(); i++)
			{
				if(i == codiceRimozione)
				{
					prodotto1 = prodotti.get(i);
					int quantita=prodotto1.getQuantita();
					prodotti.remove(i);
					carrello.setProdotti(prodotti);
					carrello.setPrezzoTotaleRimozione(prodotto1.getPrezzo()*quantita);
				}
			}
			
			int riferimento = prodotto1.getIdProdotto();		

			json.put("riferimento", riferimento);
			DecimalFormat df= new DecimalFormat(".00");
			json.put("prezzoTot", df.format(carrello.getPrezzoTotale()));
			json.put("totale", carrello.getQuantita());
		} catch (JSONException e) {
			System.out.println("Eccezione numero elementi carrello");
			e.printStackTrace();
		}
		response.getWriter().print(json.toString());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
