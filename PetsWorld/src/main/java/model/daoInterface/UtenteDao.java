package model.daoInterface;

import java.sql.SQLException;
import java.util.ArrayList;

import model.beans.Indirizzo;
import model.beans.MetodoPagamento;
import model.beans.Prodotto;
import model.beans.Utente;

public interface UtenteDao <s extends Exception> {

	boolean Accountcheck(String email, String password) throws SQLException;
	
	boolean CreateAccount(Utente account) throws SQLException;
		
	int Admincheck (String email, String password) throws SQLException;

	boolean DeleteAccount(Utente elimina) throws SQLException;
	
	boolean UpdateAccount(Utente account, int id) throws SQLException;
	
	Utente doRetrieveByKey(String email) throws SQLException;

	ArrayList<Indirizzo> setIndirizzi (int ID) throws SQLException;
	
	ArrayList<MetodoPagamento> setMetodiPagamento (int ID) throws SQLException;

}
