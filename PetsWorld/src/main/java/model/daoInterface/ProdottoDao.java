package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.*;

public interface ProdottoDao<S extends Exception> {
	
	List<Prodotto> SliderProdotto() throws SQLException;
	
	List<Prodotto> ListaProdotti(Prodotto animale) throws SQLException;
	

}
