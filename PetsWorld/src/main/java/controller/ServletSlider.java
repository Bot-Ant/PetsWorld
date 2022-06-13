package controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.*;
import model.daoImplementation.ProdottoImp;
/**
 * Servlet implementation class ServletSlider
 */
@WebServlet(name = "ServletSlider", value = "/ServletSlider" , loadOnStartup = 1 )
public class ServletSlider extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected DataSource source;

    @Override
    public void init() throws ServletException {
        super.init();
        
        List<Prodotto> list = new ArrayList<>();
        ProdottoImp slider = new ProdottoImp(source);
        try {
            list = slider.SliderProdotto();
            this.getServletContext().setAttribute("list", list);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

}