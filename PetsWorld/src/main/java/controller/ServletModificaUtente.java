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

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.Indirizzo;
import model.beans.MetodoPagamento;
import model.beans.Utente;
import model.daoImplementation.UtenteImp;
import model.daoImplementation.metodoPagamentoImp;
import model.daoInterface.UtenteDao;
import model.daoInterface.metodoPagamentoDao;

/**
 * Servlet implementation class ServletModificaUtente
 */
@WebServlet("/ServletModificaUtente")
public class ServletModificaUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletModificaUtente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessione = request.getSession(true);
		
		String Nome = request.getParameter("nome");
        String Cognome = request.getParameter("cognome");
        String CodiceFiscale= request.getParameter("cod");
        String Cell = request.getParameter("cell");
        String Email = request.getParameter("email");
        String Pass = request.getParameter("password");
      
        Utente account = new Utente();
        UtenteDao<SQLException> ut= new UtenteImp(source);
     
        account = (Utente) sessione.getAttribute("utente");
        int id=account.getIdUtente();
        
        account.setNome(Nome);
        account.setCognome(Cognome);
        account.setCodiceFiscale(CodiceFiscale);
        account.setTelefono(Cell);
        account.setEmail(Email);
        account.setPassword(Pass);
        
        
        try {
           ut.UpdateAccount(account, id);
        }catch (SQLException throwables) {
            throwables.printStackTrace();
        }


		RequestDispatcher requestDispatcher = request.getRequestDispatcher("userData.jsp");
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
