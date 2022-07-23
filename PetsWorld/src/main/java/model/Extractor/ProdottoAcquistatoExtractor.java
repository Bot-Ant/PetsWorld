package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.ProdottoAcquistato;

public class ProdottoAcquistatoExtractor implements ResultSetExtractor<ProdottoAcquistato> {

    public ProdottoAcquistato extract(ResultSet resultSet) throws SQLException{
    	ProdottoAcquistato prodottoAcquistato=new ProdottoAcquistato();
    	prodottoAcquistato.setQuantita(resultSet.getInt("prodottoacquistato.quantita"));
    	prodottoAcquistato.setFoto(resultSet.getString("prodottoacquistato.foto"));
    	prodottoAcquistato.setPrezzo(resultSet.getDouble("prodottoacquistato.prezzo"));
    	prodottoAcquistato.setIva(resultSet.getDouble("prodottoacquistato.iva"));
    	prodottoAcquistato.setIdOrdine(resultSet.getInt("prodottoacquistato.IDordine_fk"));
    	prodottoAcquistato.setNome(resultSet.getString("prodottoacquistato.nome"));
    	return prodottoAcquistato;
    }
}