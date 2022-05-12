package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.beans.Ordine;

public class ordineExtractor implements ResultSetExtractor<Ordine> {

    public Ordine extract(ResultSet resultSet) throws SQLException{
        Ordine ordine=new Ordine();
        ordine.setIdOrdine(resultSet.getInt("ordine.idordine"));
        ordine.setDataOrdine(resultSet.getString("ordine.dataOrdine"));
        ordine.setStatusOrdine(resultSet.getString("ordine.statusOrdine"));
        ordine.setTotale(resultSet.getDouble("ordine.totale"));
        ordine.setPagamento(resultSet.getString("ordine.Pagamento"));
        ordine.setIndirizzo(resultSet.getString("ordine.indirizzo"));
        return ordine;
    }
}