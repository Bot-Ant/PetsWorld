package model.search;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class ProductSearch implements SearchBuilder {

	@Override
	public List<Condition> buildSearch(HttpServletRequest request) {
		List<Condition> conditions = new ArrayList<>();
		Enumeration<String> parametersName = request.getParameterNames();
		while(parametersName.hasMoreElements()) {
			String param = parametersName.nextElement();
			String value = request.getParameter(param);
			
			if(value != null && !value.isBlank()) {
				switch(param) {
				
				case "animale" :{
					conditions.add(new Condition ("animale", Operatore.MATCH, value));
				
					break;
				}
				case "categoria" :{
					conditions.add(new Condition ("tipo", Operatore.EQ, value));
					break;
				}
				case "prezMin" :{
					conditions.add(new Condition ("prezzo", Operatore.GT, value));
					break;
				}
				case "prezMax" :{
					conditions.add(new Condition ("prezzo", Operatore.LT, value));
					break;
				}
					default:
						break;
				
				}
			}
		}
		return conditions;
	}

}

