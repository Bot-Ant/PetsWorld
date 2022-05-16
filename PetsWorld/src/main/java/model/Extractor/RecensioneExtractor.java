package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Recensione;

public class RecensioneExtractor implements ResultSetExtractor<Recensione> {

    public Recensione extract(ResultSet resultSet) throws SQLException{
    	Recensione recensione=new Recensione();
    	recensione.setIdRecensione(resultSet.getInt("recensione.idrecensione"));
    	recensione.setData(resultSet.getString("recensione.data"));
    	recensione.setDescrizione(resultSet.getString("recensione.descrizione"));
    	recensione.setValutazione(resultSet.getInt("recensione.valutazione"));
    	return recensione;
    }
}
