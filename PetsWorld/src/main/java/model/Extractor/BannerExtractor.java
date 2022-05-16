package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.Banner;

public class BannerExtractor implements ResultSetExtractor<Banner> {

    public Banner extract(ResultSet resultSet) throws SQLException{
        Banner banner=new Banner();
        banner.setIdBanner(resultSet.getInt("banner.idBanner"));
        banner.setImmagine(resultSet.getString("banner.immagine"));
        banner.setNome(resultSet.getString("banner.nome"));
        return banner;
    }
}