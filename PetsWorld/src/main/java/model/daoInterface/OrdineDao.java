package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.*;
import model.search.Condition;

public interface OrdineDao<S extends Exception> {
	
	void doSave (Ordine ord) throws SQLException;

	int cerca_ID_Max() throws SQLException;
}
