package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import model.beans.Ordine;
import model.beans.Utente;
import model.daoImplementation.OrdineImp;
import model.daoImplementation.UtenteImp;
import model.daoInterface.OrdineDao;
import model.daoInterface.UtenteDao;

/**
 * Servlet implementation class ServletVisualizzazioneOrdini
 */
@WebServlet("/ServletVisualizzazioneOrdini")
public class ServletVisualizzazioneOrdini extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletVisualizzazioneOrdini(){
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DataSource ds = (DataSource)getServletContext().getAttribute("DataSource"); 
		Utente user = new Utente();
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
			request.setAttribute("errore", "errore");
			getServletContext().getRequestDispatcher(response.encodeURL("/userOrders.jsp")).forward(request, response);
		}
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
