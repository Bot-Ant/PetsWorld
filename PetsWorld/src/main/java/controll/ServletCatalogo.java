package controll;

import java.io.IOException;
import java.sql.SQLException;

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
		String operazione= request.getParameter("operazione");
		  
	    String address;
	    switch(operazione){
	    
	    case"cane": {
	    	String Animale = request.getParameter("operatore");
	    	Prodotto prd = new Prodotto();
	    	ProdottoDao <SQLException> dao = new ProdottoImp(source);
	    	
	    	prd.setAnimale(Animale);
	    		 try {
	    	           dao.ListaProdotti(prd);
	    	        } catch (SQLException throwables) {
	    	            throwables.printStackTrace();
	    	        }
	   
            address = "dynamic/catalogo.jsp";
            break;
	    	}
	    
	    	
	        case "gatto": {
	            address="dynamic/login.jsp";
	            break;
	        }
	        
	        case "pesci" : {
	            address="dynamic/registrazione.jsp";
	            
	            break;
	        }
	        case "volatili": {
	            address="carrello.jsp";
	            break;
	        }
	        case"piccoliAnimali": {
	            address = "dynamic/index.jsp";
	            break;
	        }
	        
	        default:
	            throw new IllegalStateException("Unexpected value: " + operazione);
	    }
	    
	    
	    RequestDispatcher requestDispatcher= request.getRequestDispatcher(address);
	    requestDispatcher.include(request,response);
	    }
	    
	}


