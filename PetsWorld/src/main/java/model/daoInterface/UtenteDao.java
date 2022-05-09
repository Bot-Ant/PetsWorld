package model.daoInterface;

import java.sql.SQLException;

public interface UtenteDao <s extends Exception> {

	boolean Accountcheck(String email, String password) throws SQLException;
}
