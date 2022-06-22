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

import model.beans.Carrello;
import model.beans.Utente;
import model.daoImplementation.UtenteImp;
import model.daoInterface.UtenteDao;

/**
 * Servlet implementation class ServletMain
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
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
		
		// TODO Auto-generated method stub
		
		
		String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        
        Utente accountdaloggare = new Utente();
        UtenteDao<SQLException> dao= new UtenteImp(source);
        
        accountdaloggare.setEmail(Email);
        accountdaloggare.setPassword(Password);
        
        try {
        	boolean idUser=dao.Accountcheck(Email, Password);
        	int ruolo=dao.Admincheck(Email, Password);
        	if(idUser == false) 
        	{
				request.setAttribute("errore","Inserire dati di accesso corretti.");
        		RequestDispatcher requestDispatcher = request.getRequestDispatcher("./login.jsp");
        		requestDispatcher.forward(request, response);
        	}
        	
        	if(ruolo==0) //in questo caso è un utente
        	{
    			HttpSession sessione = request.getSession(true); //restituisce la sessione se esiste, altrimenti la crea nuova
    			sessione.setAttribute("utente", accountdaloggare);
    			sessione.setAttribute("carrello", new Carrello());
        		RequestDispatcher requestDispatcher = request.getRequestDispatcher("userAccount.jsp");
        		requestDispatcher.forward(request, response);
        	}
    		
    		
        	else //in questo caso è admin
    		{
    			HttpSession sessione = request.getSession(true); //restituisce la sessione se esiste, altrimenti la crea nuova
    			sessione.setAttribute("Admin", accountdaloggare);
        		RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminAccount.jsp");
        		requestDispatcher.forward(request, response);
    			return;
    		}
        }catch(SQLException throwables) {
        	throwables.printStackTrace();
        }
	}
}