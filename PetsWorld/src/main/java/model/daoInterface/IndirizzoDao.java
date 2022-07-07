package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.*;

public interface IndirizzoDao<S extends Exception> {
	
	boolean aggiungi_indirizzo (Indirizzo indirizzo) throws SQLException;

	
}