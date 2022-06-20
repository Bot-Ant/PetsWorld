package model.daoInterface;

import java.sql.SQLException;
import java.util.List;

import model.beans.Banner;



public interface BannerDao<S extends Exception> {
	
	List<Banner> SliderBanner() throws SQLException;

}
