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

import model.beans.Utente;
import model.daoImplementation.UtenteImp;
import model.daoInterface.UtenteDao;

/**
 * Servlet implementation class ServletMain
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletLogin() {
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
		String Username = request.getParameter("username");
        String Password = request.getParameter("password");
        
        Utente accountdaloggare = new Utente();
        UtenteDao<SQLException> dao= new UtenteImp(source);
        
        accountdaloggare.setEmail(Username);
        accountdaloggare.setPassword(Password);
      
        try {
        	boolean idUser=dao.Accountcheck(Username, Password);
        	if(idUser == false) {
        		RequestDispatcher requestDispatcher = request.getRequestDispatcher("dynamic/invalidLogin.jsp");
        		requestDispatcher.forward(request, response);
        	}else {
        		RequestDispatcher requestDispatcher = request.getRequestDispatcher("dynamic/userLogged.jsp");
        		requestDispatcher.forward(request, response);
        	}
        }catch(SQLException throwables) {
        	throwables.printStackTrace();
        }
	}
}
