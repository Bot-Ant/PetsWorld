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
 * Servlet implementation class ServletModificaPay
 */
@WebServlet("/ServletModificaPay")
public class ServletModificaPay extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletModificaPay() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession sessione = request.getSession(true);
		
		String id = request.getParameter("id");
		String Numero = request.getParameter("number");
        String Nome = request.getParameter("owner");
        String Mese = request.getParameter("month");
        String Anno = request.getParameter("year");
        String Cvv= request.getParameter("cvv");
       
        Utente account = new Utente();
        UtenteDao<SQLException> ut= new UtenteImp(source);
        ArrayList<Indirizzo> indirizzi= new ArrayList<Indirizzo>();
        ArrayList<MetodoPagamento> metodiPagamento= new ArrayList<MetodoPagamento>();
        
        int ID = Integer.parseInt(id);
       
        
        MetodoPagamento nuovo = new MetodoPagamento();
        metodoPagamentoDao<SQLException> dao =  new metodoPagamentoImp(source);
        
        nuovo.setIdpaga(ID);
        nuovo.setNumero(Numero);
        nuovo.setProprietario(Nome);
        nuovo.setMeseScadenza(Mese);
        nuovo.setAnnoScadenza(Anno);
        nuovo.setCvv(Cvv);
        

        try {
            dao.modificapay(nuovo);
        }catch (SQLException throwables) {
            throwables.printStackTrace();
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

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("userPayMethods.jsp");
		requestDispatcher.forward(request, response);
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
}
}
