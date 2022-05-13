package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Prodotto;

public class prodottoExtractor implements ResultSetExtractor<Prodotto> {

    public Prodotto extract(ResultSet resultSet) throws SQLException{
    	Prodotto prodotto=new Prodotto();
    	prodotto.setIdProdotto(resultSet.getInt("prodotto.idprodotto"));
    	prodotto.setNome(resultSet.getString("prodotto.nome"));
    	prodotto.setTipo(resultSet.getString("prodotto.tipo"));
    	prodotto.setPrezzo(resultSet.getDouble("prodotto.prezzo"));
    	prodotto.setQuantità(resultSet.getInt("prodotto.quantita"));
    	prodotto.setDescrizione(resultSet.getString("prodotto.descrizione"));
    	prodotto.setFoto(resultSet.getString("prodotto.foto"));
    	prodotto.setIva(resultSet.getDouble("prodotto.iva"));
    	prodotto.setDataScadenza(resultSet.getString("prodotto.dataScadenza"));
    	prodotto.setDimensione(resultSet.getString("prodotto.dimensione"));
    	prodotto.setColore(resultSet.getString("prodotto.colore"));
    	prodotto.setPeso(resultSet.getDouble("prodotto.peso"));
    	return prodotto;
    }
}