package model.query;

import model.QueryBuilder;

public class ProdottoQuery {

	
	private static final String PRODOTTO_QUERY="prodotto";
	private static final String PRODOTTO_ALIAS="prd";
	
	
	public static String lista() {

		QueryBuilder builder = new QueryBuilder (PRODOTTO_QUERY,PRODOTTO_ALIAS);
		builder.select();
		return builder.GeneratedQuery();
	}
}
