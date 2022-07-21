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
	
	public static String ruolo() {
		QueryBuilder builder = new QueryBuilder (UTENTE_QUERY, UTENTE_ALIAS);
		builder.select().where("email=?").andwhere("password=?");	
		return builder.GeneratedQuery();
	}
	
	public static String elimina() {
		QueryBuilder builder = new QueryBuilder (UTENTE_QUERY, UTENTE_ALIAS);
		builder.delete();
		builder.where("idProdotto = ?");
		return builder.GeneratedQuery();
	}
	
	public static String modifica() {
		QueryBuilder builder = new QueryBuilder (UTENTE_QUERY, UTENTE_ALIAS);
		builder.update(null);
		return builder.GeneratedQuery();
	}
	
	public static String cerca_utente() {
		QueryBuilder builder = new QueryBuilder (UTENTE_QUERY,UTENTE_ALIAS);
		builder.select().where("email=?");
		return builder.GeneratedQuery();
	}
	
	public static String cerca_indirizzi() {
		QueryBuilder builder = new QueryBuilder (UTENTE_QUERY,UTENTE_ALIAS);
		builder.select().innerJoin("indirizzo", "via").on("user.idUtente = via.IDutente_fk").where("via.IDutente_fk=?");
		return builder.GeneratedQuery();
	}
	
	public static String cerca_metodi_pagamento() {
		QueryBuilder builder = new QueryBuilder (UTENTE_QUERY,UTENTE_ALIAS);
		builder.select().innerJoin("metodo_pagamento", "cart").on("user.idUtente = cart.IDutente").where("cart.IDutente=?");
		return builder.GeneratedQuery();
	}
	
}
