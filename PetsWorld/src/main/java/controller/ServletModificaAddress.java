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

import model.beans.*;
import model.daoImplementation.*;
import model.daoInterface.IndirizzoDao;
import model.daoInterface.UtenteDao;
/**
 * Servlet implementation class ServletUtente
 */
@WebServlet("/ServletModificaAddress")
public class ServletModificaAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;

    public ServletModificaAddress() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessione = request.getSession(true);
		Utente account = new Utente();
        ArrayList<Indirizzo> indirizzi= new ArrayList<Indirizzo>();
        ArrayList<MetodoPagamento> metodiPagamento= new ArrayList<MetodoPagamento>();
        UtenteDao<SQLException> ut= new UtenteImp(source);
		
		String id = request.getParameter("id");
		String Nome = request.getParameter("name");
        String Civico = request.getParameter("number");
        String Citta = request.getParameter("city");
        String Provincia = request.getParameter("prov");
        String Cap = request.getParameter("cap");
       
        
        int ID = Integer.parseInt(id);
        
        Indirizzo nuovo=new Indirizzo();
        IndirizzoDao<SQLException> dao=new IndirizzoImp(source);
        
 
        nuovo.setIdindirizzo(ID);
        nuovo.setNome_strada(Nome);
        nuovo.setCivico(Civico);
        nuovo.setCitta(Citta);
        nuovo.setProvincia(Provincia);
        nuovo.setCAP(Cap);
        
        
   
        try {
            dao.modificaIndirizzo(nuovo);
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
   
     
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("userAddresses.jsp");
		requestDispatcher.forward(request, response);
   
	   }
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	}

