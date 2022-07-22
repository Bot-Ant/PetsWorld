package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.*;
import model.search.Condition;

public interface prodottoAcquistatoDao <S extends Exception> {
	
	void doSave (Prodotto prd, int id) throws SQLException;
}
