package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.*;
import model.search.Condition;

public interface ProdottoDao<S extends Exception> {
	
	List<Prodotto> SliderProdotto() throws SQLException;
	
	List<Prodotto> Prodottocaos() throws SQLException;
	
	List<Prodotto> ListaProdotti(List<Condition> conditions) throws SQLException;
	
	Prodotto doRetrieveByKey(int ID) throws SQLException;
	
	int restituisciQuantita(int ID) throws SQLException;
	
	void doUpdateCatalogo(Prodotto prd) throws SQLException;
	
	void doDelete (Prodotto prd) throws SQLException;
	
	void doSave (Prodotto prd) throws SQLException;
}
