package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.beans.Donazione;

public class donazioneExtractor implements ResultSetExtractor<Donazione> {

    public Donazione extract(ResultSet resultSet) throws SQLException{
    	Donazione donazione=new Donazione();
    	donazione.setIdDonazione(resultSet.getInt("donazione.IdDonazione"));
    	donazione.setPrezzo(resultSet.getInt("donazione.prezzo"));
        return donazione;
    }
}