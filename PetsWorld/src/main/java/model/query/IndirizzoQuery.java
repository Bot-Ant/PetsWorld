package model.query;

import model.QueryBuilder;

public class IndirizzoQuery {
	
	private static final String INDIRIZZO_QUERY="indirizzo";
	private static final String INDIRIZZO_ALIAS="via";
	
	public static String inserimento_indirizzo() {
		QueryBuilder builder = new QueryBuilder (INDIRIZZO_QUERY, INDIRIZZO_ALIAS);
		builder.insert("IDutente_fk","citta","nome_strada","civico","CAP","provincia");		
		return builder.GeneratedQuery();
	}
	
	public static String modifica_indirizzo() {
		QueryBuilder builder = new QueryBuilder (INDIRIZZO_QUERY, INDIRIZZO_ALIAS);
		builder.update2("citta","nome_strada","civico","CAP","provincia").where("idIndirizzo=?");	
		return builder.GeneratedQuery();
	}
	

	public static String elimina() {
		QueryBuilder builder = new QueryBuilder (INDIRIZZO_QUERY, INDIRIZZO_ALIAS);
		builder.delete().where("idIndirizzo=?");
		return builder.GeneratedQuery();
	}
}
