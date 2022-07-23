package model.query;

import model.QueryBuilder;

public class metodoPagamentoQuery {
	
	private static final String METODO_PAGAMENTO_QUERY="metodo_pagamento";
	private static final String METODO_PAGAMENTO_ALIAS="cart";
	
	public static String inserimento_metodo_pagamento() {
		QueryBuilder builder = new QueryBuilder (METODO_PAGAMENTO_QUERY, METODO_PAGAMENTO_ALIAS);
		builder.insert("IDutente","numero","proprietario","MeseScadenza","AnnoScadenza","cvv");		
		return builder.GeneratedQuery();
	}

	public static String modifica_metodo_pagamento() {
		QueryBuilder builder = new QueryBuilder (METODO_PAGAMENTO_QUERY, METODO_PAGAMENTO_ALIAS);
		builder.update2("numero","proprietario","MeseScadenza","AnnoScadenza","cvv").where("idMetodoPagamento=?");
		return builder.GeneratedQuery();
	}
	
	public static String elimina() {
		QueryBuilder builder = new QueryBuilder (METODO_PAGAMENTO_QUERY, METODO_PAGAMENTO_ALIAS);
		builder.delete().where("idMetodoPagamento=?");
		return builder.GeneratedQuery();
		
	}
}
