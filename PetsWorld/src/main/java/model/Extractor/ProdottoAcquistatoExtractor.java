package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.ProdottoAcquistato;

public class ProdottoAcquistatoExtractor implements ResultSetExtractor<ProdottoAcquistato> {

    public ProdottoAcquistato extract(ResultSet resultSet) throws SQLException{
    	ProdottoAcquistato prodottoAcquistato=new ProdottoAcquistato();
    	prodottoAcquistato.setIdProdottoAcquistato(resultSet.getInt("prodottoacquistato.idProdottoAcquistato"));
    	prodottoAcquistato.setNome(resultSet.getString("prodottoacquistato.nome"));
    	prodottoAcquistato.setTipo(resultSet.getString("prodottoacquistato.tipo"));
    	prodottoAcquistato.setQuantità(resultSet.getInt("prodottoacquistato.quantita"));
    	prodottoAcquistato.setFoto(resultSet.getString("prodottoacquistato.foto"));
    	prodottoAcquistato.setPrezzo(resultSet.getDouble("prodottoacquistato.prezzo"));
    	prodottoAcquistato.setIva(resultSet.getDouble("prodottoacquistato.iva"));
    	prodottoAcquistato.setPeso(resultSet.getDouble("prodottoacquistato.peso"));
    	prodottoAcquistato.setDataScadenza(resultSet.getString("prodottoacquistato.dataScadenza"));
    	prodottoAcquistato.setDimensione(resultSet.getString("prodottoacquistato.dimensione"));
    	prodottoAcquistato.setColore(resultSet.getString("prodottoacquistato.colore"));
    	return prodottoAcquistato;
    }
}