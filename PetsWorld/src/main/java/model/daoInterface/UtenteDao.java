package model.daoInterface;

import java.sql.SQLException;

import model.beans.Utente;

public interface UtenteDao <s extends Exception> {

	boolean Accountcheck(String email, String password) throws SQLException;
	
	boolean CreateAccount(Utente account) throws SQLException;
		
	int Admincheck (String email, String password) throws SQLException;

	boolean DeleteAccount(Utente elimina) throws SQLException;
	
	boolean UpdateAccount(Utente modifica) throws SQLException;
}
