package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Prodotto;

public class ProdottoExtractor implements ResultSetExtractor<Prodotto> {

    public Prodotto extract(ResultSet resultSet) throws SQLException{
    	Prodotto prodotto=new Prodotto();
    	prodotto.setIdProdotto(resultSet.getInt("prd.idprodotto"));
    	prodotto.setNome(resultSet.getString("prd.nome"));
    	prodotto.setTipo(resultSet.getString("prd.tipo"));
    	prodotto.setPrezzo(resultSet.getDouble("prd.prezzo"));
    	prodotto.setQuantità(resultSet.getInt("prd.quantita"));
    	prodotto.setDescrizione(resultSet.getString("prd.descrizione"));
    	prodotto.setFoto(resultSet.getString("prd.foto"));
    	prodotto.setIva(resultSet.getDouble("prd.iva"));
    	prodotto.setAnimale(resultSet.getString("prd.animale"));
    	prodotto.setDataScadenza(resultSet.getString("prd.dataScadenza"));
    	prodotto.setDimensione(resultSet.getString("prd.dimensione"));
    	prodotto.setColore(resultSet.getString("prd.colore"));
    	prodotto.setPeso(resultSet.getDouble("prd.peso"));
    	return prodotto;
    }
}