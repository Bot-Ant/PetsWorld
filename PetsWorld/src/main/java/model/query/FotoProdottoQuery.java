package model.query;

import model.QueryBuilder;

public class FotoProdottoQuery {

	private static final String FOTO_QUERY="fotoprodotto";
	private static final String FOTO_ALIAS="ft";
	
	
	public static String foto() {
		QueryBuilder builder = new QueryBuilder(FOTO_QUERY, FOTO_ALIAS);
		builder.select().where("idprodotto=?");
		return builder.GeneratedQuery();
	}

}
