package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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


@WebServlet("/ServletModificaProdotto")
public class ServletModificaProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletModificaProdotto(){
		super();
	}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.encodeURL("ServletModificaProdotto");
		Prodotto prodotto = new Prodotto();
		ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		
		try
		{
			int id=Integer.parseInt(request.getParameter("product-code"));
			int quantita=Integer.parseInt(request.getParameter("product-quantity"));
			double prezzo=Double.parseDouble(request.getParameter("product-price"));
			
			prodotto.setIdProdotto(id);
			prodotto.setQuantita(quantita);
			prodotto.setPrezzo(prezzo);
		}
		catch (NumberFormatException e)
		{
			request.setAttribute("errore2","Inserire valori numerici");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminProducts.jsp");
			requestDispatcher.forward(request, response);
			return;
		}
		
		try {
			prodottoImp.doUpdateCatalogo(prodotto);
		} catch (SQLException e) {
			System.out.println("Eccezione modifica prodotto");
		}

		List<Prodotto> list = new ArrayList<>();
	    ProdottoImp slider = new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
	    
	    try {
	        list = slider.SliderProdotto();
	        this.getServletContext().setAttribute("list", list);
	    } catch (SQLException throwables) {
	        throwables.printStackTrace();
	    }
	    
		request.setAttribute("errore2","Modifica avvenuta con successo");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminProducts.jsp");
		requestDispatcher.forward(request, response);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
