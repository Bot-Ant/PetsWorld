package model.query;

import model.QueryBuilder;

public class IndirizzoQuery {
	
	private static final String INDIRIZZO_QUERY="indirizzo";
	private static final String INDIRIZZO_ALIAS="via";
	
	public static String inserimento_indirizzo() {
		QueryBuilder builder = new QueryBuilder (INDIRIZZO_QUERY, INDIRIZZO_ALIAS);
		builder.insert("citta","nome_strada","civico","CAP","provincia");		
		return builder.GeneratedQuery();
	}

}
