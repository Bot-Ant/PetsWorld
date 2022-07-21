package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Indirizzo;

public class IndirizzoExtractor implements ResultSetExtractor<Indirizzo> {

    public Indirizzo extract(ResultSet resultSet) throws SQLException{
    	Indirizzo indirizzo=new Indirizzo();
    	indirizzo.setIdUtente(resultSet.getInt("via.IDutente_fk"));
    	indirizzo.setCitta(resultSet.getString("via.citta"));
    	indirizzo.setNome_strada(resultSet.getString("via.nome_strada"));
    	indirizzo.setCivico(resultSet.getString("via.civico"));
    	indirizzo.setCAP(resultSet.getString("via.CAP"));
    	indirizzo.setProvincia(resultSet.getString("via.provincia"));
    	indirizzo.setIdindirizzo(resultSet.getInt("via.idIndirizzo"));
        return indirizzo;
    }
}
