package model.daoImplementation;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.Manager;
import model.QueryBuilder;
import model.Extractor.IndirizzoExtractor;
import model.Extractor.MetodoPagamentoExtractor;
import model.Extractor.ProdottoExtractor;
import model.Extractor.UtenteExtractor;
import model.beans.Prodotto;
import model.beans.Utente;
import model.daoInterface.UtenteDao;
import model.query.ProdottoQuery;
import model.query.UtenteQuery;
import model.beans.Indirizzo;
import model.beans.MetodoPagamento;

public class UtenteImp extends Manager implements UtenteDao <SQLException> {
	
	public UtenteImp (DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public boolean Accountcheck (String email, String password) throws SQLException {
		try(Connection connection = createConnection()){
			String query = UtenteQuery.login();
			try(PreparedStatement st = connection.prepareStatement(query)){
				st.setString(1, email);
				st.setString(2, password);
				
				ResultSet rs = st.executeQuery();
				 if(rs.next()==true) {
					 return true;
				 }else {
					 return false; 
				 }
			
			}
		}
		
	}

	@Override
	public boolean CreateAccount(Utente account) throws SQLException {
		// TODO Auto-generated method stub
		try(Connection connection = createConnection()){
			String query = UtenteQuery.registrati();
			try(PreparedStatement pst = connection.prepareStatement(query)){
                /**------Mapping-------*/
            	
            	pst.setString(1, account.getNome());
                pst.setString(2, account.getCognome());
                pst.setString(3, account.getEmail());
                pst.setString(4, account.getPassword());
                pst.setString(5, account.getTelefono());
                pst.setString(6, account.getCodiceFiscale());
           
               int rows= pst.executeUpdate();
               return rows==1;
            }
        }
	}
	
	public int Admincheck (String email, String password) throws SQLException {
		int ruolo = 0;
		try(Connection connection = createConnection()){
			String query = UtenteQuery.ruolo();
			try(PreparedStatement st = connection.prepareStatement(query)){
				st.setString(1, email);
				st.setString(2, password);
				
				ResultSet rs = st.executeQuery();
				 if(rs.next()==true) {
					 ruolo=rs.getInt("ruolo");
				 }
			}
		}
		return ruolo;
	}

	@Override
	public boolean DeleteAccount(Utente elimina) throws SQLException {
		// TODO Auto-generated method stub
		try(Connection connection = createConnection()){
			String query = UtenteQuery.elimina();
			 
			try(PreparedStatement ps = connection.prepareStatement(query)){
           {
			/**---MAPPING---*/
        	   ps.setInt(1,elimina.getIdUtente());
        	   
               int rows= ps.executeUpdate();
               
               return rows==1;

           	}
			}

		}	
	}

	@Override
	public boolean UpdateAccount(Utente modifica) throws SQLException {
		// TODO Auto-generated method stub
		return false;
	}

	public Utente doRetrieveByKey(String email) throws SQLException {
		try (Connection connection = createConnection()){ 
			String query = UtenteQuery.cerca_utente();
			
			try (PreparedStatement ps = connection.prepareStatement(query)) {
				
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery(); 
                UtenteExtractor  ut = new UtenteExtractor();
                Utente utente= new Utente();
                while (rs.next()) {
                	utente=ut.extract(rs);
                }
                return utente;
			}	
		}
	}
	
	public ArrayList<Indirizzo> setIndirizzi(int ID) throws SQLException {
		try (Connection connection = createConnection()){ 
			String query = UtenteQuery.cerca_indirizzi();
			
			try (PreparedStatement ps = connection.prepareStatement(query)) {
				ps.setInt(1, ID);
				ResultSet rs = ps.executeQuery(); 
				ArrayList<Indirizzo> indirizzi=new ArrayList<Indirizzo>();
                while (rs.next()) {
                	Indirizzo ind= new Indirizzo();
                	ind=new IndirizzoExtractor().extract(rs);
                	indirizzi.add(ind);
                }
			return indirizzi;
			}
		}
	}

	public ArrayList<MetodoPagamento> setMetodiPagamento(int ID) throws SQLException {
		try (Connection connection = createConnection()){ 
			String query = UtenteQuery.cerca_metodi_pagamento();
			
			try (PreparedStatement ps = connection.prepareStatement(query)) {
				ps.setInt(1, ID);
				ResultSet rs = ps.executeQuery(); 
				ArrayList<MetodoPagamento> metodi=new ArrayList<MetodoPagamento>();
                while (rs.next()) {
                	MetodoPagamento met= new MetodoPagamento();
                	met=new MetodoPagamentoExtractor().extract(rs);
                	metodi.add(met);
                }
			return metodi;
			}
		}
	}

}

