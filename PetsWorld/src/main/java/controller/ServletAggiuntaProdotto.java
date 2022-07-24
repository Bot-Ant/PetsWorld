package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.IllegalFormatException;
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


@WebServlet("/ServletAggiuntaProdotto")
public class ServletAggiuntaProdotto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletAggiuntaProdotto(){
		super();
	}
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.encodeURL("ServletAggiuntaProdotto");
		Prodotto prodotto = new Prodotto();
		ProdottoDao<SQLException> prodottoImp= new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		
		List<Prodotto> list = new ArrayList<>();
        ProdottoImp slider = new ProdottoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
        
		prodotto.setNome(request.getParameter("product-name"));
		prodotto.setAnimale(request.getParameter("animale"));
		prodotto.setTipo(request.getParameter("tipo"));
		Double prezzo= Double.parseDouble(request.getParameter("product-price"));
		prodotto.setPrezzo(prezzo);
		Double iva= Double.parseDouble(request.getParameter("product-tax"));
		prodotto.setIva(iva);
		int quantita= Integer.parseInt(request.getParameter("product-quantity"));
		prodotto.setQuantita(quantita);
		
		String peso=request.getParameter("product-weight");
		if(peso=="")
		{
			prodotto.setPeso("null");
		}
		else
		{
			prodotto.setPeso(peso);
		}
		
		String dimensione=request.getParameter("product-size");

		if(dimensione=="")
		{
			prodotto.setDimensione("null");
		}
		else
		{
			prodotto.setDimensione(dimensione);
		}
		
		String colore=request.getParameter("product-color");

		if(colore=="")
		{
			prodotto.setColore("null");
		}
		else
		{
			prodotto.setColore(colore);
		}
		
		String scadenza=request.getParameter("product-expiry-date");
		
		if(scadenza=="")
		{
			prodotto.setDataScadenza("null");
		}
		else
		{
			prodotto.setDataScadenza(scadenza);
		}

		prodotto.setDescrizione(request.getParameter("product-description"));
		String foto = request.getParameter("product-picture");
		foto = foto.substring(12);
		if (foto != null && foto.length() > 0 && foto.charAt(foto.length() - 4) == '.') {
	        foto = foto.substring(0, foto.length() - 4);
	    }
		prodotto.setFoto(foto);

		try {
			prodottoImp.doSave(prodotto);
		} catch (SQLException e) {
			System.out.println("Eccezione modifica prodotto");
		}

        try {
            list = slider.SliderProdotto();
            this.getServletContext().setAttribute("list", list);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
		request.setAttribute("errore2","Modifica avvenuta con successo");
		return;
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
}
