package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.Indirizzo;
import model.beans.MetodoPagamento;
import model.beans.Utente;
import model.daoImplementation.IndirizzoImp;
import model.daoImplementation.UtenteImp;
import model.daoInterface.IndirizzoDao;
import model.daoInterface.UtenteDao;


/**
 * Servlet implementation class ServletElimina
 */
@WebServlet("/ServletElimina")
public class ServletElimina extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletElimina() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessione = request.getSession(true);
		Utente account = new Utente();
        ArrayList<Indirizzo> indirizzi= new ArrayList<Indirizzo>();
        ArrayList<MetodoPagamento> metodiPagamento= new ArrayList<MetodoPagamento>();
        UtenteDao<SQLException> ut= new UtenteImp(source);
		String intero = request.getParameter("elimina");
		
		int ID = Integer.parseInt(intero);
		
			
		 Indirizzo elimina=new Indirizzo();
	     IndirizzoDao<SQLException> dao=new IndirizzoImp(source);
	    
	     elimina.setIdindirizzo(ID);
	     
	     try {
	    	 dao.DeleteAccount(elimina);
	    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
	     account = (Utente) sessione.getAttribute("utente");
	       
	        try {
				account=ut.doRetrieveByKey(account.getEmail());
			} catch (SQLException e) {
				e.printStackTrace();
			}

	        try {
				indirizzi=ut.setIndirizzi(account.getIdUtente());
			} catch (SQLException e) {
				e.printStackTrace();
			}
	        
	        try {
				metodiPagamento=ut.setMetodiPagamento(account.getIdUtente());
			} catch (SQLException e) {
				e.printStackTrace();
			}
	        
	        account.setIndirizziSpedizione(indirizzi);
	        account.setMetodiPagamento(metodiPagamento);
			sessione.setAttribute("utente", account);
	   
	     request.getRequestDispatcher("userAddresses.jsp").forward(request,response);
	}

}
