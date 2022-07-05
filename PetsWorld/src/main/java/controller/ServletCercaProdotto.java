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

import model.beans.FotoProdotto;
import model.beans.Prodotto;
import model.daoImplementation.FotoProdottoImp;
import model.daoImplementation.ProdottoImp;
import model.daoInterface.FotoProdottoDao;
import model.daoInterface.ProdottoDao;

@WebServlet("/ServletCercaProdotto")
public class ServletCercaProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletCercaProdotto(){
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.encodeURL("ServletCercaProdotto");
		String id = request.getParameter("id");
		int ID = Integer.parseInt(id);
		
		Prodotto prodotto = new Prodotto();
		ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		
		 List<FotoProdotto> foto= new ArrayList<>();
 		 FotoProdottoDao<SQLException> dao = new FotoProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
 		 
		try {
			foto = dao.CercaFoto(ID);
			prodotto = prodottoImp.doRetrieveByKey(ID);
		} catch (SQLException e) {
			System.out.println("Eccezzione lanciata dalla ricerca prodotto");
			e.printStackTrace();
		}
		
		if(prodotto.getIdProdotto() != -1 && prodotto != null && prodotto.getQuantita() > 0)
		{	
			request.setAttribute("foto",foto);
			request.setAttribute("prodotto", prodotto);
			request.setAttribute("messaggio", "Ricerca riuscita");
			getServletContext().getRequestDispatcher(response.encodeURL(response.encodeURL("/productPage.jsp"))).forward(request, response);
		}
		else
		{
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(response.encodeURL("/paginaProdottoNonTrovato.jsp"));
			dispatcher.forward(request, response);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}