package model.daoImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.Manager;
import model.Extractor.BannerExtractor;
import model.beans.Banner;
import model.beans.Indirizzo;
import model.beans.MetodoPagamento;
import model.daoInterface.BannerDao;
import model.daoInterface.metodoPagamentoDao;
import model.query.BannerQuery;
import model.query.IndirizzoQuery;
import model.query.metodoPagamentoQuery;


public class metodoPagamentoImp extends Manager implements metodoPagamentoDao <SQLException>{

	public metodoPagamentoImp(DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public boolean aggiungi_metodo_pagamento(MetodoPagamento metodo) throws SQLException {
		// TODO Auto-generated method stub
		try(Connection connection = createConnection()){
			String query = metodoPagamentoQuery.inserimento_metodo_pagamento();
			try(PreparedStatement pst = connection.prepareStatement(query)){
                /**------Mapping-------*/
            	
                pst.setInt(1, metodo.getIdUtente());
                pst.setString(2, metodo.getNumero());
                pst.setString(3, metodo.getProprietario());
                pst.setString(4, metodo.getMeseScadenza());
                pst.setString(5, metodo.getAnnoScadenza());
                pst.setString(6, metodo.getCvv());
           
               int rows= pst.executeUpdate();
               return rows==1;
            }
        }
	}

	@Override
	public boolean modificapay(MetodoPagamento nuovo) throws SQLException {
		try(Connection connection = createConnection()){
			String query = metodoPagamentoQuery.modifica_metodo_pagamento();
			try(PreparedStatement pst = connection.prepareStatement(query)){
                /**------Mapping-------*/
            	
               
				pst.setString(1, nuovo.getNumero());
                pst.setString(2, nuovo.getProprietario());
                pst.setString(3, nuovo.getMeseScadenza());
                pst.setString(4, nuovo.getAnnoScadenza());
                pst.setString(5, nuovo.getCvv());
                pst.setInt(6, nuovo.getIdpaga());
           
               int rows= pst.executeUpdate();
               return rows==1;
            }
	}

	}

	@Override
	public boolean DeleteAccount(MetodoPagamento elimina) throws SQLException {
		try(Connection connection = createConnection()){
			String query = metodoPagamentoQuery.elimina();
			 
			try(PreparedStatement ps = connection.prepareStatement(query)){
           {
			/**---MAPPING---*/
        	   ps.setInt(1,elimina.getIdpaga());
        	   
               int rows= ps.executeUpdate();
               
               return rows==1;

           	}
			}

		}	
	}
}
