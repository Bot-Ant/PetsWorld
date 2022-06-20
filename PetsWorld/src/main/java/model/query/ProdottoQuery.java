package model.query;

import java.util.List;

import model.QueryBuilder;
import model.search.*;

public class ProdottoQuery {

	
	private static final String PRODOTTO_QUERY="prodotto";
	private static final String PRODOTTO_ALIAS="prd";
	
	
	public static String lista() {

		QueryBuilder builder = new QueryBuilder (PRODOTTO_QUERY,PRODOTTO_ALIAS);
		builder.select();
		return builder.GeneratedQuery();
	}
	
	public static String cerca(List<Condition> conditionList) {
		QueryBuilder builder = new QueryBuilder (PRODOTTO_QUERY,PRODOTTO_ALIAS);
		builder.select();
		if(!conditionList.isEmpty()) {
			builder.where().search(conditionList);
		}
		return builder.GeneratedQuery();
	}
	
	public static String cerca_nome() {
		QueryBuilder builder = new QueryBuilder (PRODOTTO_QUERY,PRODOTTO_ALIAS);
		builder.select().where("prd.idprodotto=?");
		return builder.GeneratedQuery();
	}
	
	public static String cerca_quantita() {
		QueryBuilder builder= new QueryBuilder (PRODOTTO_QUERY, PRODOTTO_ALIAS);
		builder.select().where("prd.idprodotto=?");
		return builder.GeneratedQuery();
	}
}
