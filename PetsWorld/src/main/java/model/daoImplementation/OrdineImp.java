package model.daoImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import com.mysql.cj.protocol.Resultset;

import model.beans.Ordine;
import model.beans.Prodotto;
import model.Manager;
import model.daoInterface.OrdineDao;
import model.daoInterface.ProdottoDao;
import model.query.ProdottoQuery;
import model.search.Condition;
import model.search.Operatore;
import model.Extractor.ProdottoExtractor;

public class OrdineImp extends Manager implements OrdineDao <SQLException> {

	public OrdineImp(DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}
	private static final long serialVersionUID = 1L;

	public void doSave(Ordine ord) throws SQLException {
		try (Connection connection = createConnection()) {
			String query = "insert into ordine (idordine, totale,Pagamento,indirizzo,IDUtente_fk) values ("+ ord.getIdOrdine() +","+ ord.getTotale() +",'"+ord.getPagamento()+"',"+ord.getIndirizzo()+","+ord.getIdUtente()+");";
			 
				try(PreparedStatement ps = connection.prepareStatement(query)){
				ps.executeUpdate();
				}
		}
	}

	public int cerca_ID_Max() throws SQLException {
		try (Connection connection = createConnection()) {
			String query = "SELECT idordine FROM ordine WHERE idordine=(SELECT max(idordine) FROM ordine);";
			int max=0;
				try(PreparedStatement ps = connection.prepareStatement(query)){
					
					Resultset rs= (Resultset) ps.executeQuery();
					 while (((ResultSet) rs).next()) {
						 max = ((ResultSet) rs).getInt("idordine");
		                }
						return max;
					}
			}
	}
}