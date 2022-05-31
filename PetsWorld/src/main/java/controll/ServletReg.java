package controll;

import java.io.IOException;
import java.sql.SQLException;

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
 * Servlet implementation class ServletReg
 */
@WebServlet("/ServletReg")
public class ServletReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletReg() {
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
		String Nome = request.getParameter("nome");
        String Cognome = request.getParameter("cognome");
        String Email = request.getParameter("email");
        String Password = request.getParameter("password");
        String cellulare = request.getParameter("cellulare");
        String CodiceFiscale = request.getParameter("codiceFiscale");
        
        Utente nuovoaccount=new Utente();
        UtenteDao<SQLException> dao=new UtenteImp(source);
        
        nuovoaccount.setNome(Nome);
        nuovoaccount.setCognome(Cognome);
        nuovoaccount.setEmail(Email);
        nuovoaccount.setPassword(Password);
        nuovoaccount.setCodiceFiscale(CodiceFiscale);
        nuovoaccount.setTelefono(cellulare);
        try {
            dao.CreateAccount(nuovoaccount);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.getRequestDispatcher("./login.jsp").forward(request,response);
    }

	}

