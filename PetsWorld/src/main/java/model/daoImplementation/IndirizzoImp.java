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
import model.beans.Utente;
import model.daoInterface.BannerDao;
import model.daoInterface.IndirizzoDao;
import model.query.BannerQuery;
import model.query.IndirizzoQuery;
import model.query.UtenteQuery;


public class IndirizzoImp  extends Manager implements IndirizzoDao <SQLException>{

	public IndirizzoImp(DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public boolean aggiungi_indirizzo (Indirizzo ind) throws SQLException {
		// TODO Auto-generated method stub
		try(Connection connection = createConnection()){
			String query = IndirizzoQuery.inserimento_indirizzo();
			try(PreparedStatement pst = connection.prepareStatement(query)){
                /**------Mapping-------*/
            	
                pst.setInt(1, ind.getIdUtente());
            	pst.setString(2, ind.getCitta());
                pst.setString(3, ind.getNome_strada());
                pst.setString(4, ind.getCivico());
                pst.setString(5, ind.getCAP());
                pst.setString(6, ind.getProvincia());
           
               int rows= pst.executeUpdate();
               return rows==1;
            }
        }
	}


}
