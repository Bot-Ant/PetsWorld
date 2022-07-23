package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.Indirizzo;
import model.daoImplementation.IndirizzoImp;
import model.daoInterface.IndirizzoDao;

/**
 * Servlet implementation class ServleNuovoIndirizzo
 */
@WebServlet("/ServleNuovoIndirizzo")
public class ServleNuovoIndirizzo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServleNuovoIndirizzo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String Nome = request.getParameter("name");
        String Civico = request.getParameter("number");
        String Citta = request.getParameter("city");
        String Provincia = request.getParameter("prov");
        String Cap = request.getParameter("cap");
        int ID = Integer.parseInt(id);
        
        
        
        Indirizzo nuovo=new Indirizzo();
        IndirizzoDao<SQLException> dao=new IndirizzoImp(source);
        
 
        nuovo.setIdUtente(ID);
        nuovo.setNome_strada(Nome);
        nuovo.setCivico(Civico);
        nuovo.setCitta(Citta);
        nuovo.setProvincia(Provincia);
        nuovo.setCAP(Cap);
      
        try {
            dao.aggiungi_indirizzo(nuovo);
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
