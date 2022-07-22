package model.daoInterface;

import java.sql.SQLException;

import model.beans.*;

public interface IndirizzoDao<S extends Exception> {
	
	boolean aggiungi_indirizzo (Indirizzo indirizzo) throws SQLException;

	boolean modificaIndirizzo(Indirizzo nuovo)throws SQLException;

	boolean DeleteAccount(Indirizzo elimina)throws SQLException;

	
}