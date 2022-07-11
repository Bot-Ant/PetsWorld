package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.IllegalFormatException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import model.beans.Prodotto;
import model.daoImplementation.ProdottoImp;
import model.daoInterface.ProdottoDao;


@WebServlet("/ServletAggiuntaProdotto")
public class ServletAggiuntaProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletAggiuntaProdotto(){
		super();
	}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		out.write("Error: GET method is used but POST method is required");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.encodeURL("ServletAggiuntaProdotto");
		Prodotto prodotto = new Prodotto();
		ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		
		try
		{
			prodotto.setNome(request.getParameter("product-name"));
		}
		catch (IllegalFormatException e)
		{
			request.setAttribute("errore2","Inserire stringa nel campo nome");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminProducts.jsp");
			requestDispatcher.forward(request, response);
			return;
		}
		
		try
		{
			prodotto.setNome(request.getParameter("product-name"));
		}
		catch (IllegalFormatException e)
		{
			request.setAttribute("errore2","Inserire stringa nel campo nome");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminProducts.jsp");
			requestDispatcher.forward(request, response);
			return;
		}
		
		
		
		try {
			prodottoImp.doSave(prodotto);
		} catch (SQLException e) {
			System.out.println("Eccezione modifica prodotto");
		}

		request.setAttribute("errore2","Modifica avvenuta con successo");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminProducts.jsp");
		requestDispatcher.forward(request, response);
		return;
	}

}
