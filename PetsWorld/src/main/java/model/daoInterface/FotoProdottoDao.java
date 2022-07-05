package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.*;

public interface FotoProdottoDao<S extends Exception> {
	
	
	List<FotoProdotto> CercaFoto (int ID) throws SQLException;	

}
