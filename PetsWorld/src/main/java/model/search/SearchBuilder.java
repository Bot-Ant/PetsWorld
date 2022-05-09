package model.search;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

public interface SearchBuilder {

	List<Condition> buildSearch(HttpServletRequest request);
}
