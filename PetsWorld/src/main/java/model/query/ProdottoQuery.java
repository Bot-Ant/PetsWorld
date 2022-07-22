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
	
	public static String caos() {
		QueryBuilder builder = new QueryBuilder (PRODOTTO_QUERY,PRODOTTO_ALIAS);
		builder.select().order().limit2(4);
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
	
	public static String aggiornaProdotto() {
		QueryBuilder builder= new QueryBuilder (PRODOTTO_QUERY, PRODOTTO_ALIAS);
		builder.update("prd.quantita=? , prd.prezzo").where("prd.idprodotto=?");
		return builder.GeneratedQuery();
	}
	
	public static String rimuovi_prodotto() {
		QueryBuilder builder= new QueryBuilder (PRODOTTO_QUERY, PRODOTTO_ALIAS);
		builder.delete().where("prd.idprodotto=?");
		return builder.GeneratedQuery();
	}
	
	public static String aggiungi_prodotto() {
		QueryBuilder builder= new QueryBuilder (PRODOTTO_QUERY, PRODOTTO_ALIAS);

		return builder.GeneratedQuery();
	}
}
