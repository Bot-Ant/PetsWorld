package model.daoImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.Manager;
import model.Extractor.BannerExtractor;
import model.beans.Banner;
import model.daoInterface.BannerDao;
import model.query.BannerQuery;


public class BannerImp  extends Manager implements BannerDao <SQLException>{

	public BannerImp(DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public List<Banner> SliderBanner() throws SQLException {
		try (Connection connection = createConnection()) {
			String query = BannerQuery.lista();
			 
				try(PreparedStatement ps = connection.prepareStatement(query)){
			
                ResultSet rs = ps.executeQuery();
                BannerExtractor  prd = new BannerExtractor();
                List<Banner> listaBanner = new ArrayList<>();
                
                while (rs.next()) {
                	listaBanner.add(prd.extract(rs));
                }
                return listaBanner;
            }
        }
	}

}
