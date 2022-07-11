package controller;

import java.io.IOException;
import java.sql.SQLException;

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


@WebServlet("/ServletRimozioneProdotto")
public class ServletRimozioneProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletRimozioneProdotto(){
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.encodeURL("ServletModificaProdotto");
		Prodotto prodotto = new Prodotto();
		ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
	
		int id=Integer.parseInt(request.getParameter("product-code"));		
		prodotto.setIdProdotto(id);
		System.out.print(id);

		try {
			prodottoImp.doDelete(prodotto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("errore1","Rimozione con successo");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminProducts.jsp");
		requestDispatcher.forward(request, response);
		return;
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
