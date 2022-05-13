package model.query;

import model.QueryBuilder;

public class UtenteQuery {
	
	
	private static final String UTENTE_QUERY="utente";
	private static final String UTENTE_ALIAS="user";
	
	
	public static String login() {
		QueryBuilder builder = new QueryBuilder (UTENTE_QUERY, UTENTE_ALIAS);
		builder.select().where("email=?").andwhere("password=?");		
		return builder.GeneratedQuery();
	}
	
	public static String registrati() {
		QueryBuilder builder = new QueryBuilder (UTENTE_QUERY, UTENTE_ALIAS);
		builder.insert("nome","cognome","email","password","telefono","codiceFiscale");		
		return builder.GeneratedQuery();
	}
}
