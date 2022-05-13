package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Indirizzo;

public class indirizzoExtractor implements ResultSetExtractor<Indirizzo> {

    public Indirizzo extract(ResultSet resultSet) throws SQLException{
    	Indirizzo indirizzo=new Indirizzo();
    	indirizzo.setEmail(resultSet.getString("indirizzo.email"));
    	indirizzo.setCitt�(resultSet.getString("indirizzo.citta"));
    	indirizzo.setNome_strada(resultSet.getString("indirizzo.nome_strada"));
    	indirizzo.setCivico(resultSet.getString("indirizzo.civico"));
    	indirizzo.setCAP(resultSet.getString("indirizzo.CAP"));
    	indirizzo.setProvincia(resultSet.getString("indirizzo.provincia"));
        return indirizzo;
    }
}
