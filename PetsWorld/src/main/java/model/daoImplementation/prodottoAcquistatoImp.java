package model.daoImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import model.beans.Prodotto;
import model.Manager;
import model.daoInterface.ProdottoDao;
import model.daoInterface.prodottoAcquistatoDao;
import model.query.ProdottoQuery;
import model.search.Condition;
import model.search.Operatore;
import model.Extractor.ProdottoExtractor;

public class prodottoAcquistatoImp extends Manager implements prodottoAcquistatoDao <SQLException> {

	public prodottoAcquistatoImp(DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}
	private static final long serialVersionUID = 1L;

	@Override
	public void doSave(Prodotto prd, int id) throws SQLException {
		try (Connection connection = createConnection()) {
			String query = "insert into prodottoacquistato (nome, quantita, foto, prezzo, iva, IDordine_fk) values ('" + prd.getNome() +"',"+prd.getQuantita()+",'"+prd.getFoto()+"',"+prd.getPrezzo()+","+prd.getIva()+","+id+");";
				try(PreparedStatement ps = connection.prepareStatement(query)){
				ps.executeUpdate();
				}
		}
	}
}