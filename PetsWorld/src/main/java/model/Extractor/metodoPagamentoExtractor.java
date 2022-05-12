package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.beans.MetodoPagamento;

public class ordineExtractor implements ResultSetExtractor<MetodoPagamento> {

    public MetodoPagamento extract(ResultSet resultSet) throws SQLException{
    	MetodoPagamento MetodoPagamento=new MetodoPagamento();
    	MetodoPagamento.setEmail(resultSet.getString("metodo_pagamento.email"));
    	MetodoPagamento.setTipo(resultSet.getString("metodo_pagamento.tipo"));
        MetodoPagamento.setNumero(resultSet.getString("metodo_pagamento.numero"));
        MetodoPagamento.setProprietario(resultSet.getString("metodo_pagamento.proprietario"));
        MetodoPagamento.setDataScadenza(resultSet.getString("metodo_pagamento.dataScadenza"));
        MetodoPagamento.setCodice(resultSet.getString("metodo_pagamento.codice"));
        return MetodoPagamento;
    }
}