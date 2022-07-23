package model.daoImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;

import com.mysql.cj.protocol.Resultset;

import model.beans.Indirizzo;
import model.beans.Ordine;
import model.beans.Prodotto;
import model.beans.ProdottoAcquistato;
import model.Manager;
import model.daoInterface.OrdineDao;
import model.daoInterface.ProdottoDao;
import model.query.ProdottoQuery;
import model.search.Condition;
import model.search.Operatore;
import model.Extractor.IndirizzoExtractor;
import model.Extractor.OrdineExtractor;
import model.Extractor.ProdottoAcquistatoExtractor;
import model.Extractor.ProdottoExtractor;

public class OrdineImp extends Manager implements OrdineDao <SQLException> {

	public OrdineImp(DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}
	private static final long serialVersionUID = 1L;

	public void doSave(Ordine ord) throws SQLException {
		try (Connection connection = createConnection()) {
			System.out.print(ord.getDataOrdine());
			String query = "insert into ordine (idordine, totale,Pagamento,indirizzo,IDUtente_fk, dataOrdine) values ("+ ord.getIdOrdine() +","+ ord.getTotale() +",'"+ord.getPagamento()+"',"+ord.getIndirizzo()+","+ord.getIdUtente()+",'"+ord.getDataOrdine()+"');";	
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

	@Override
	public ArrayList<Ordine> cerca_ordini_utente(int id) throws SQLException {
		try (Connection connection = createConnection()) {
			String query = "select * from ordine where IDUtente_fk="+id+";";
			ArrayList<Ordine> ordini= new ArrayList<Ordine>();
				try(PreparedStatement ps = connection.prepareStatement(query)){
					
					Resultset rs=(Resultset) ps.executeQuery();
					 while (((ResultSet) rs).next()) {
		                	Ordine ordine = new OrdineExtractor().extract((ResultSet) rs);
		                	ordini.add(ordine);
		                }
				}
				return ordini;
			}
	}

	@Override
	public ArrayList<ProdottoAcquistato> cerca_prodotti_ordine(int id) throws SQLException {
		try (Connection connection = createConnection()) {
			String query = "select * from prodottoacquistato where IDordine_fk="+id+";";
			ArrayList<ProdottoAcquistato> prodotti= new ArrayList<ProdottoAcquistato>();
				try(PreparedStatement ps = connection.prepareStatement(query)){
					
					Resultset rs=(Resultset) ps.executeQuery();
					 while (((ResultSet) rs).next()) {
		                	ProdottoAcquistato prodottoacquistato = new ProdottoAcquistatoExtractor().extract((ResultSet) rs);
		                	prodotti.add(prodottoacquistato);
		                }
				}
				return prodotti;
			}
	}

	@Override
	public Indirizzo cerca_indirizzo_ordine(int id_ordine, int id_utente) throws SQLException {
		try (Connection connection = createConnection()) {
			String query = "select * from indirizzo join ordine where ordine.idordine='"+id_ordine+"'and indirizzo.IDUtente_fk='"+id_utente+"';";
			Indirizzo ind= new Indirizzo();
			try(PreparedStatement ps = connection.prepareStatement(query)){
				
				Resultset rs=(Resultset) ps.executeQuery();
				 while (((ResultSet) rs).next()) {
				    	ind.setCitta(((ResultSet) rs).getString("citta"));
				    	ind.setNome_strada(((ResultSet) rs).getString("nome_strada"));
				    	ind.setCivico(((ResultSet) rs).getString("civico"));
				    	ind.setCAP(((ResultSet) rs).getString("CAP"));
				    	ind.setProvincia(((ResultSet) rs).getString("provincia"));
			}
			 return ind;
			}
		}
	}
	
}