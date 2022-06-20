package model.query;

import model.QueryBuilder;

public class BannerQuery {
	
	private static final String BANNER_QUERY="banner";
	private static final String BANNER_ALIAS="banfoto";
	
	public static String lista() {
		// TODO Auto-generated method stub
		QueryBuilder builder = new QueryBuilder (BANNER_QUERY,BANNER_ALIAS);
		builder.select();
		return builder.GeneratedQuery();
	}

}
