package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import model.beans.Carrello;
import model.beans.Indirizzo;
import model.beans.MetodoPagamento;
import model.beans.Ordine;
import model.beans.Prodotto;
import model.beans.Utente;
import model.daoImplementation.IndirizzoImp;
import model.daoImplementation.OrdineImp;
import model.daoImplementation.ProdottoImp;
import model.daoImplementation.UtenteImp;
import model.daoImplementation.metodoPagamentoImp;
import model.daoImplementation.prodottoAcquistatoImp;
import model.daoInterface.IndirizzoDao;
import model.daoInterface.OrdineDao;
import model.daoInterface.ProdottoDao;
import model.daoInterface.UtenteDao;
import model.daoInterface.metodoPagamentoDao;
import model.daoInterface.prodottoAcquistatoDao;

/**
 * Servlet implementation class ServletOrdine
 */
@WebServlet("/ServletOrdine")
public class ServletOrdine extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected DataSource source;
	
	public ServletOrdine(){
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessione = request.getSession(false);
		Utente utente = (Utente) sessione.getAttribute("utente");
		Carrello carrello = (Carrello) sessione.getAttribute("carrello");
		Ordine ordine = new Ordine();
		
		/*
		String nome_strada = (String) request.getParameter("indirizzo");
		String civico = (String) request.getParameter("civico");
		String citta = (String) request.getParameter("citta");
		String cap = (String) request.getParameter("CAP");		
		String provincia = (String) request.getParameter("provincia");
		String nome_proprietario = (String) request.getParameter("nome-proprietario");
		String numero = (String) request.getParameter("numero-carta");
		String mese = (String) request.getParameter("mese-scadenza");
		String anno = (String) request.getParameter("anno-scadenza");
		String cvv = (String) request.getParameter("cvv");

		
		Indirizzo ind= new Indirizzo();
        IndirizzoDao<SQLException> dao_indirizzo=new IndirizzoImp((org.apache.tomcat.jdbc.pool.DataSource) source);

        ind.setIdUtente(utente.getIdUtente());
        ind.setCitta(citta);
        ind.setNome_strada(nome_strada);
        ind.setCivico(civico);
        ind.setCAP(cap);
        ind.setProvincia(provincia);
        try {
            dao_indirizzo.aggiungi_indirizzo(ind);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        
		MetodoPagamento cart= new MetodoPagamento();
        metodoPagamentoDao<SQLException> dao_metodo_pagamento=new metodoPagamentoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
		
        cart.setIdUtente(utente.getIdUtente());
        cart.setNumero(numero);
        cart.setProprietario(nome_proprietario);
        cart.setMeseScadenza(mese);
        cart.setAnnoScadenza(anno);
        cart.setCvv(cvv);
        try {
            dao_metodo_pagamento.aggiungi_metodo_pagamento(cart);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        */
		
		int indirizzo = Integer.parseInt(request.getParameter("saved-addresses"));
		int pagamento = Integer.parseInt(request.getParameter("saved-payments"));
		
		if(carrello != null )
		{
			int id_MAX=0;
			OrdineDao<SQLException> ordineImp= new OrdineImp((org.apache.tomcat.jdbc.pool.DataSource) source);
			prodottoAcquistatoDao<SQLException> prodottoacquistatoImp= new prodottoAcquistatoImp((org.apache.tomcat.jdbc.pool.DataSource) source);
			
			try {
				id_MAX=ordineImp.cerca_ID_Max();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
			LocalDate data = LocalDate.now();
			 
			String date = data.toString();
			
			ordine.setDataOrdine(date);
			ordine.setTotale(carrello.getPrezzoTotale());
			ordine.setPagamento(pagamento);
			ordine.setIndirizzo(indirizzo);
			ordine.setIdUtente(utente.getIdUtente());
			ordine.setIdOrdine(id_MAX+1);
			
			try {
				ordineImp.doSave(ordine);
			} catch (SQLException e) {
				System.out.println("Eccezione salvataggio ordine in tabella");
				e.printStackTrace();
			}
			
			ArrayList<Prodotto> lista=new ArrayList<Prodotto>();
			lista=carrello.getProdotti();
			for(int i=0; i<lista.size();i++)
			{
				try {
					prodottoacquistatoImp.doSave(lista.get(i), id_MAX+1);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		}
		
		carrello.svuotaCarrello();
		carrello.azzeraPrezzoTotale();
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(response.encodeURL("/userAccount.jsp"));
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
