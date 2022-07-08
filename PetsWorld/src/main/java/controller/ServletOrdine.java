package controller;

import java.io.IOException;
import java.sql.SQLException;

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
import model.beans.Utente;
import model.daoImplementation.IndirizzoImp;
import model.daoImplementation.UtenteImp;
import model.daoImplementation.metodoPagamentoImp;
import model.daoInterface.IndirizzoDao;
import model.daoInterface.UtenteDao;
import model.daoInterface.metodoPagamentoDao;

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
		String nome_strada = (String) request.getParameter("indirizzo");
		String civico = (String) request.getParameter("civico");
		String citta = (String) request.getParameter("citta");
		String cap = (String) request.getParameter("CAP");		
		String provincia = (String) request.getParameter("provincia");
		String nome_proprietario = (String) request.getParameter("nome-proprietario");
		String numero = (String) request.getParameter("numero-carta");
		String data = (String) request.getParameter("data-scadenza");
		String cvv = (String) request.getParameter("cvv");
		String tipo = (String) request.getParameter("tipo-carta");

		
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
        cart.setTipo(tipo);
        cart.setNumero(numero);
        cart.setProprietario(nome_proprietario);
        cart.setDataScadenza(data);
        cart.setCodice(cvv);
        try {
            dao_metodo_pagamento.aggiungi_metodo_pagamento(cart);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        
        
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
