package model.query;

import model.QueryBuilder;

public class metodoPagamentoQuery {
	
	private static final String METODO_PAGAMENTO_QUERY="metodo_pagamento";
	private static final String METODO_PAGAMENTO_ALIAS="cart";
	
	public static String inserimento_metodo_pagamento() {
		QueryBuilder builder = new QueryBuilder (METODO_PAGAMENTO_QUERY, METODO_PAGAMENTO_ALIAS);
		builder.insert("tipo","numero","proprietario","dataScadenza","codice");		
		return builder.GeneratedQuery();
	}

}
