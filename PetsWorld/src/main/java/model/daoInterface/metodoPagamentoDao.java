package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.*;

public interface metodoPagamentoDao<S extends Exception> {
	
	boolean aggiungi_metodo_pagamento (MetodoPagamento metodo_pagamento) throws SQLException;

	boolean modificapay(MetodoPagamento nuovo) throws SQLException;
	
	boolean DeleteAccount(MetodoPagamento elimina)throws SQLException;
}