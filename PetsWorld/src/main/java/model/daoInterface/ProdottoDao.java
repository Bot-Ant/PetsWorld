package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.*;
import model.search.Condition;

public interface ProdottoDao<S extends Exception> {
	
	List<Prodotto> SliderProdotto() throws SQLException;
	
	List<Prodotto> ListaProdotti(List<Condition> conditions) throws SQLException;
	

}
