package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.Indirizzo;
import model.daoImplementation.IndirizzoImp;
import model.daoInterface.IndirizzoDao;


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
	     
	    
	     request.getRequestDispatcher("userAccount.jsp").forward(request,response);
	
}

	}
