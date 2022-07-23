package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import model.beans.Indirizzo;
import model.beans.Ordine;
import model.beans.Utente;
import model.beans.Prodotto;
import model.beans.ProdottoAcquistato;
import model.daoImplementation.OrdineImp;
import model.daoImplementation.UtenteImp;
import model.daoInterface.OrdineDao;
import model.daoInterface.UtenteDao;

/**
 * Servlet implementation class ServletVisualizzazioneOrdini
 */
@WebServlet("/ServletFattura")
public class ServletFattura extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletFattura(){
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DataSource ds = (DataSource)getServletContext().getAttribute("DataSource"); 
		HttpSession sessione = request.getSession(true); //restituisce la sessione se esiste, altrimenti la crea nuova
		Indirizzo ind=new Indirizzo();
		Utente utente=(Utente) sessione.getAttribute("utente");
		
		/*Utente user = new Utente();
		OrdineDao<SQLException> dao= new OrdineImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		HttpSession sessione = request.getSession(false);
		if(sessione!=null)
		{
			user = (Utente) sessione.getAttribute("utente");
		}
		
		Collection<Ordine> ordini = new LinkedList<Ordine>();
		try {
			ordini=dao.cerca_ordini_utente(user.getIdUtente());
		} catch (SQLException e) {
			System.out.println("Errore ricerca ordini dell'utente");
			e.printStackTrace();
		}
		
		
		if(ordini.size() > 0)
		{
			request.setAttribute("ordini", ordini);
			getServletContext().getRequestDispatcher(response.encodeURL("/userOrders.jsp")).forward(request, response);
		}
		else
		{
			request.setAttribute("errore", 1);
			getServletContext().getRequestDispatcher(response.encodeURL("/userOrders.jsp")).forward(request, response);
		}
		
	}*/
		String totale= request.getParameter("totale");
		Double tot=Double.parseDouble(totale);
		int ordine= Integer.parseInt(request.getParameter("id_ordine"));		
		String DataOrdine= request.getParameter("data");

		OrdineDao<SQLException> ordineImp= new OrdineImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		ArrayList<ProdottoAcquistato> prodotti=new ArrayList<ProdottoAcquistato>();
		
		try {
			prodotti=ordineImp.cerca_prodotti_ordine(ordine);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println(ordine);
		System.out.print(utente.getIdUtente());
		
		try {
			ind=ordineImp.cerca_indirizzo_ordine(ordine, utente.getIdUtente());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		request.setAttribute("id_ordine", ordine);
		request.setAttribute("data_ordine", DataOrdine);
		request.setAttribute("totale", tot);
		request.setAttribute("prodotti", prodotti);
		request.setAttribute("indirizzo", ind);
		
		getServletContext().getRequestDispatcher(response.encodeURL("/fattura.jsp")).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
