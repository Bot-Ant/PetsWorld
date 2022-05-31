package model;

	import org.apache.tomcat.jdbc.pool.PoolProperties;
	import org.apache.tomcat.jdbc.pool.DataSource;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import java.io.File;
	import java.sql.Connection;
	import java.sql.SQLException;
	import java.util.TimeZone;

	public abstract class Manager extends HttpServlet {

	    /**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		protected static DataSource source;
	    

	    public Manager(DataSource source) {
	    	Manager.source = source;
	    }


	    protected String getPath(HttpServletRequest req){
	    return req.getPathInfo() != null ? req.getPathInfo() : "/";
	}

	protected String view(String viewPath){
	    String basePath= getServletContext().getInitParameter("basePath");
	    String engine=getServletContext().getInitParameter("engine");
	    return basePath+viewPath+engine;
	}
	protected String back(HttpServletRequest request){
	    return request.getServletPath()+request.getPathInfo();

	}
	    public static Connection createConnection() throws SQLException {
	        if (source == null) {
	            PoolProperties p = new PoolProperties();
	            p.setUrl("jdbc:mysql://localhost:3306/PetsWorld?serverTimezone=" + TimeZone.getDefault().getID());
	            p.setDriverClassName("com.mysql.cj.jdbc.Driver");
	            p.setUsername("root");
	            p.setPassword("studentiTSW");
	            p.setMaxActive(100);
	            p.setInitialSize(10);
	            p.setMinIdle(10);
	            p.setRemoveAbandonedTimeout(60);
	            p.setRemoveAbandoned(true);
	            source = new org.apache.tomcat.jdbc.pool.DataSource();
	            source.setPoolProperties(p);
	        }
	        return source.getConnection();
	    }

	protected String getUploadPath(){
	    return System.getenv("CATALINA_HOME") +File.separator+"uploads"+File.separator;
	}
}
