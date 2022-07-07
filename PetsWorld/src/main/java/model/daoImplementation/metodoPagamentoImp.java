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
            	pst.setString(2, metodo.getTipo());
                pst.setString(3, metodo.getNumero());
                pst.setString(4, metodo.getProprietario());
                pst.setString(5, metodo.getDataScadenza());
                pst.setString(6, metodo.getCodice());
           
               int rows= pst.executeUpdate();
               return rows==1;
            }
        }
	}



}
