package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.MetodoPagamento;

public class MetodoPagamentoExtractor implements ResultSetExtractor<MetodoPagamento> {

    public MetodoPagamento extract(ResultSet resultSet) throws SQLException{
    	MetodoPagamento MetodoPagamento=new MetodoPagamento();
    	MetodoPagamento.setIdUtente(resultSet.getInt("cart.IDutente"));
        MetodoPagamento.setNumero(resultSet.getString("cart.numero"));
        MetodoPagamento.setProprietario(resultSet.getString("cart.proprietario"));
        MetodoPagamento.setMeseScadenza(resultSet.getString("cart.meseScadenza"));
        MetodoPagamento.setAnnoScadenza(resultSet.getString("cart.annoScadenza"));
        MetodoPagamento.setCvv(resultSet.getString("cart.cvv"));
        return MetodoPagamento;
    }
}