package controll;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.Prodotto;
import model.daoImplementation.ProdottoImp;
import model.daoInterface.ProdottoDao;
import model.search.Condition;
import model.search.ProductSearch;

/**
 * Servlet implementation class ServletCatalogo
 */
@WebServlet("/ServletCatalogo")
public class ServletCatalogo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletCatalogo() {
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
		
		String nome = request.getParameter("animale");
		
		
		ProdottoDao<SQLException> dao = new ProdottoImp(source);

		List<Condition> conditions = new ProductSearch().buildSearch(request);
		  
		try {
			List<Prodotto> search = dao.ListaProdotti(conditions);
			this.getServletContext().setAttribute("prodotto",search);
			request.setAttribute("animale", nome);
	        request.getRequestDispatcher("dynamic/catalogo.jsp").forward(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	    
}


