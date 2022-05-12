package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.beans.Cucciolo;

public class cuccioloExtractor implements ResultSetExtractor<Cucciolo> {

    public Cucciolo extract(ResultSet resultSet) throws SQLException{
    	Cucciolo cucciolo=new Cucciolo();
    	cucciolo.setIdCucciolo(resultSet.getInt("cucciolo.IdCucciolo"));
    	cucciolo.setEtà(resultSet.getInt("cucciolo.eta"));
    	cucciolo.setNome(resultSet.getString("cucciolo.nome"));
    	cucciolo.setTipo(resultSet.getString("cucciolo.tipo"));
    	cucciolo.setRazza(resultSet.getString("cucciolo.razza"));
    	cucciolo.setFoto(resultSet.getString("cucciolo.foto"));
        return cucciolo;
    }
}