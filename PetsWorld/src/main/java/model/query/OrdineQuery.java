package model.query;

import model.QueryBuilder;

public class OrdineQuery {

	private static final String ORDINE_QUERY="ordine";
	private static final String ORDINE_ALIAS="ordine";
	
	
	public static String lista() {
		QueryBuilder builder = new QueryBuilder (ORDINE_QUERY,ORDINE_ALIAS);
		builder.select();
		return builder.GeneratedQuery();
	}
}
