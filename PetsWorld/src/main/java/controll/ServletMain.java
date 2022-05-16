package controll;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jdbc.pool.DataSource;

/**
 * Servlet implementation class ServletMain
 */
@WebServlet("/ServletMain")
public class ServletMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletMain() {
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
		// TODO Auto-generated method stub
		String operazione= request.getParameter("operazione");
	  
	    String address;
	    switch(operazione){
	    
	    
	         
	    	case"Home": {// nel caso in cui si sia premuto il tasto logout dopo esser loggati
            address = "dynamic/index.jsp";
            break;
	    	}
	    	
	        case "Login": { //nel caso in cui sia submittato il tasto login dalla form, rimanda alla jsp apposita
	            address="dynamic/login.jsp";
	            break;
	        }
	        
	        case "Registrazione" : {//stesso ma con registrazione
	            address="dynamic/registrazione.jsp";
	            
	            break;
	        }
	        case "Carrello": {//stesso ma con carrello.
	            address="carrello.jsp";
	            break;
	        }
	        case"Logout": {// nel caso in cui si sia premuto il tasto logout dopo esser loggati
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
