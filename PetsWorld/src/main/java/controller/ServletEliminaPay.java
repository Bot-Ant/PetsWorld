package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.Indirizzo;
import model.beans.MetodoPagamento;
import model.daoImplementation.IndirizzoImp;
import model.daoImplementation.metodoPagamentoImp;
import model.daoInterface.IndirizzoDao;
import model.daoInterface.metodoPagamentoDao;

/**
 * Servlet implementation class ServletEliminaPay
 */
@WebServlet("/ServletEliminaPay")
public class ServletEliminaPay extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEliminaPay() {
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
		
			
		 MetodoPagamento elimina=new MetodoPagamento();
	     metodoPagamentoDao<SQLException> dao=new metodoPagamentoImp(source);
	    
	     elimina.setIdpaga(ID);
	     
	     try {
	    	 dao.DeleteAccount(elimina);
	    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
	    
	     request.getRequestDispatcher("userAccount.jsp").forward(request,response);
	
}

}
