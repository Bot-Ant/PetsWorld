package model.daoInterface;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.beans.*;
import model.search.Condition;

public interface OrdineDao<S extends Exception> {
	
	void doSave (Ordine ord) throws SQLException;

	int cerca_ID_Max() throws SQLException;
	
	ArrayList<Ordine> cerca_ordini_utente(int id) throws SQLException;
  
	ArrayList<ProdottoAcquistato> cerca_prodotti_ordine(int id) throws SQLException;
	
	Indirizzo cerca_indirizzo_ordine(int id_ordine, int id_utente) throws SQLException;
	
	 List<Ordine> listaOrdin() throws SQLException;
}
