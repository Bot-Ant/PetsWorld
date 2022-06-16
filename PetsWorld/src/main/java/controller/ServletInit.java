package controller;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.*;
import model.daoImplementation.BannerImp;
import model.daoImplementation.ProdottoImp;
/**
 * Servlet implementation class ServletInit
 */
@WebServlet(name = "ServletInit", value = "/ServletInit" , loadOnStartup = 1 )
public class ServletInit extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected DataSource source;

    @Override
    public void init() throws ServletException {
        super.init();
        
        List<Banner> banner = new ArrayList<>();
        BannerImp sliderB = new BannerImp(source);
        
        List<Prodotto> list = new ArrayList<>();
        ProdottoImp slider = new ProdottoImp(source)
        		;
        try {
            list = slider.SliderProdotto();
            banner = sliderB.SliderBanner();
            this.getServletContext().setAttribute("list", list);
            this.getServletContext().setAttribute("slider", slider);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

}