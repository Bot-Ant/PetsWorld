package model.daoImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.Manager;
import model.QueryBuilder;
import model.daoInterface.UtenteDao;

public class UtenteImp extends Manager implements UtenteDao <SQLException> {
	
	public UtenteImp (DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public boolean Accountcheck (String email, String password) throws SQLException {
		try(Connection connection = createConnection()){
			QueryBuilder query = new QueryBuilder("utente", "clt");
			query.select().where("email=?").andwhere("password=?");
			try(PreparedStatement st = connection.prepareStatement(query.GeneratedQuery())){
				st.setString(1, email);
				st.setString(2, password);
				
				ResultSet rs = st.executeQuery();
				 if(rs.next()==true) {
					 return true;
				 }else {
					 return false; 
				 }
			
			}
		}
		
	}
}
