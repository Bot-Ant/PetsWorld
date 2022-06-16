package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Banner;

public class BannerExtractor implements ResultSetExtractor<Banner> {

    public Banner extract(ResultSet resultSet) throws SQLException{
    	
        Banner banner=new Banner();
        
        banner.setIdBanner(resultSet.getInt("banfoto.idBanner"));
        banner.setImmagine(resultSet.getString("banfoto.immagine"));
        banner.setNome(resultSet.getString("banfoto.nome"));
        return banner;
    }
}