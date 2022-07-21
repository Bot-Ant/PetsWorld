package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Utente;

public class UtenteExtractor implements ResultSetExtractor<Utente> {

    public Utente extract(ResultSet resultSet) throws SQLException{
        Utente utente=new Utente();
        utente.setIdUtente(resultSet.getInt("user.idUtente"));
        utente.setNome(resultSet.getString("user.nome"));
        utente.setCognome(resultSet.getString("user.cognome"));
        utente.setEmail(resultSet.getString("user.email"));
        utente.setPassword(resultSet.getString("user.password"));
        utente.setTelefono(resultSet.getString("user.telefono"));
        utente.setCodiceFiscale(resultSet.getString("user.codiceFiscale"));
        utente.setRuolo(resultSet.getInt("user.ruolo"));
        return utente;
    }
}