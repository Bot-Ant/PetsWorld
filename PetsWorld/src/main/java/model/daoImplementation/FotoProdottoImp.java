package model.daoImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.Manager;
import model.Extractor.FotoProdottoExtractor;

import model.beans.FotoProdotto;

import model.daoInterface.FotoProdottoDao;
import model.query.FotoProdottoQuery;


public class FotoProdottoImp extends Manager implements FotoProdottoDao<SQLException>{

	public FotoProdottoImp(DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public List<FotoProdotto> CercaFoto(int ID) throws SQLException {
		try (Connection connection = createConnection()) {
			String query = FotoProdottoQuery.foto();
			 
				try(PreparedStatement ps = connection.prepareStatement(query)){
				
				ps.setInt(1, ID);
                ResultSet rs = ps.executeQuery();
                List<FotoProdotto> listaFoto = new ArrayList<>();
                FotoProdottoExtractor prd = new FotoProdottoExtractor();
                
                while (rs.next()) {
                	listaFoto.add(prd.extract(rs));
                }
                return listaFoto;
            }
        }
    }
	}

