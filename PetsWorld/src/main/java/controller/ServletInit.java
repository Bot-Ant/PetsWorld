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
import model.daoImplementation.OrdineImp;
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
        BannerImp Banner = new BannerImp(source);
        
        List<Prodotto> list = new ArrayList<>();
        ProdottoImp slider = new ProdottoImp(source);
        
        List<Prodotto> venduti = new ArrayList<>();
        ProdottoImp venduto = new ProdottoImp(source);
        
        List<Prodotto> consigliati = new ArrayList<>();
        ProdottoImp consigliato = new ProdottoImp(source);
        
        List<Prodotto> novita = new ArrayList<>();
        ProdottoImp novito = new ProdottoImp(source);
        
        List<Ordine> ordine = new ArrayList<>();
        OrdineImp ord = new OrdineImp(source);
        
        try {
            list = slider.SliderProdotto();
            banner = Banner.SliderBanner();
            this.getServletContext().setAttribute("list", list);
            this.getServletContext().setAttribute("banner", banner);
            venduti = venduto.Prodottocaos();
            this.getServletContext().setAttribute("venduto", venduti);
            consigliati = consigliato.Prodottocaos();
            this.getServletContext().setAttribute("consigliato", consigliati);
            novita = novito.Prodottocaos();
            this.getServletContext().setAttribute("novito", novita);
            ordine = ord.listaOrdin();
            this.getServletContext().setAttribute("ord", ordine);
            System.out.println(ordine);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

}