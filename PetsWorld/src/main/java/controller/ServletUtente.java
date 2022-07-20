package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.*;
import model.daoImplementation.*;
import model.daoInterface.UtenteDao;
/**
 * Servlet implementation class ServletUtente
 */
@WebServlet("/ServletUtente")
public class ServletUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUtente() {
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
		String operazione= request.getParameter("operazione");
	    HttpSession session= request.getSession();
	    String address;
	    switch(operazione){
	        case "Elimina": { //eliminazione dei dati personali dell'utente
	        	String intero = request.getParameter("id");
				
				int ID = Integer.parseInt(intero);
				Utente delete = new Utente(); 
				UtenteDao<SQLException> dao= new UtenteImp(source);
				
				delete.setIdUtente(ID);
				
				try {
					dao.DeleteAccount(delete);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            address="";
	            break;
	        }
	        case "Modifica" : {//modifica dei dati personale dell'utente 
	        	String intero = request.getParameter("id");
				
				int ID = Integer.parseInt(intero);
				Utente modifica = new Utente(); 
				UtenteDao<SQLException> dao= new UtenteImp(source);
				
				modifica.setIdUtente(ID);
				
				try {
					dao.UpdateAccount(modifica);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            address="";
	            break;
	        }
	    
	        default:
	            throw new IllegalStateException("Unexpected value: " + operazione);
	    }
	    
	    RequestDispatcher requestDispatcher= request.getRequestDispatcher(address);
	    requestDispatcher.include(request,response);
	    }
	}

