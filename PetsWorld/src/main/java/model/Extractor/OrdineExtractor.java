package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Ordine;

public class OrdineExtractor implements ResultSetExtractor<Ordine> {

    public Ordine extract(ResultSet resultSet) throws SQLException{
        Ordine ordine=new Ordine();
        ordine.setIdOrdine(resultSet.getInt("ordine.idordine"));
        ordine.setTotale(resultSet.getDouble("ordine.totale"));
        ordine.setPagamento(resultSet.getInt("ordine.Pagamento"));
        ordine.setIndirizzo(resultSet.getInt("ordine.indirizzo"));
        ordine.setIdUtente(resultSet.getInt("ordine.IDUtente_fk"));
        ordine.setDataOrdine(resultSet.getString("ordine.dataOrdine"));
        return ordine;
    }
}