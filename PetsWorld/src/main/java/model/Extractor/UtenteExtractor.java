package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Utente;

public class UtenteExtractor implements ResultSetExtractor<Utente> {

    public Utente extract(ResultSet resultSet) throws SQLException{
        Utente utente=new Utente();
        utente.setIdUtente(resultSet.getInt("utente.idUtente"));
        utente.setNome(resultSet.getString("utente.nome"));
        utente.setCognome(resultSet.getString("utente.cognome"));
        utente.setEmail(resultSet.getString("utente.email"));
        utente.setPassword(resultSet.getString("utente.password"));
        utente.setTelefono(resultSet.getString("utente.telefono"));
        utente.setCodiceFiscale(resultSet.getString("utente.codiceFiscale"));
        utente.setRuolo(resultSet.getInt("utente.ruolo"));
        return utente;
    }
}