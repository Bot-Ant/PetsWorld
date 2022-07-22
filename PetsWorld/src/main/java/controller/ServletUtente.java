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
import model.daoInterface.IndirizzoDao;
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
        
       
     
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("userAccount.jsp");
		requestDispatcher.forward(request, response);
   
	   }
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	}

