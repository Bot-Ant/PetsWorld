package model.search;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class ProductSearch implements SearchBuilder {

	@Override
	public List<Condition> buildSearch(HttpServletRequest request) { // questa e una classe che implements questa searchbuilder
		//che partendo da una richiesta mi deve costruire questa lista di condizioni
		//istanzio l'array prendo tutti i parametri e i loro nomi
		// con il while prende sempre il prossimo elemento se c'e 
		List<Condition> conditions = new ArrayList<>();
		Enumeration<String> parametersName = request.getParameterNames();
		while(parametersName.hasMoreElements()) {
			String param = parametersName.nextElement();
			String value = request.getParameter(param);
			
			if(value != null && !value.isBlank()) {// toglie tutti i valori che non servono che non vengono passati 
				switch(param) {
				// i vari criteri di ricerca che vengono usati 
				case "search" :{
					conditions.add(new Condition ("nome", Operatore.MATCH, value));
					
					break;
				}
				case "animale" :{
					conditions.add(new Condition ("animale", Operatore.MATCH, value));
					break;
				}
				case "categoria" :{
					conditions.add(new Condition ("tipo", Operatore.MATCH, value));
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

