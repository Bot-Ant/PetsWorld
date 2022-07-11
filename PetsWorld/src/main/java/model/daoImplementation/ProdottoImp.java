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
import model.query.ProdottoQuery;
import model.search.Condition;
import model.search.Operatore;
import model.Extractor.ProdottoExtractor;

public class ProdottoImp extends Manager implements ProdottoDao <SQLException> {

	public ProdottoImp(DataSource source) {
		super(source);
		// TODO Auto-generated constructor stub
	}

	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public List<Prodotto> SliderProdotto() throws SQLException {
		try (Connection connection = createConnection()) {
			String query = ProdottoQuery.lista();
			 
				try(PreparedStatement ps = connection.prepareStatement(query)){
			
                ResultSet rs = ps.executeQuery();
                List<Prodotto> listaProdotti = new ArrayList<>();
                
                while (rs.next()) {
                	Prodotto prodotto = new ProdottoExtractor().extract(rs);
                	listaProdotti.add(prodotto);
                }
                return listaProdotti;
            }
        }
    }

	
	public List<Prodotto> ListaProdotti(List<Condition> conditions) throws SQLException {
			try (Connection connection = createConnection()) {
				String query = ProdottoQuery.cerca(conditions);
				
				try (PreparedStatement ps = connection.prepareStatement(query)) {
				
					
					for(int i=0; i < conditions.size(); i++) {
						
							if(conditions.get(i).getOperator() == Operatore.MATCH) {
								
								ps.setObject(i+1, "%" + conditions.get(i).getValue() + "%");
								
							}else {
								
								ps.setObject(i+1,  conditions.get(i).getValue() );
								
							}
							
							
					}
	                ResultSet rs = ps.executeQuery();
	                List<Prodotto> listaProdotti = new ArrayList<>();
	                
	                while (rs.next()) {
	                	Prodotto prodotto = new ProdottoExtractor().extract(rs);
	                	listaProdotti.add(prodotto);
	                    
	                }
	               
	                return listaProdotti;
				}
			}
		}

	public Prodotto doRetrieveByKey(int ID) throws SQLException {
		try (Connection connection = createConnection()){ 
			String query = ProdottoQuery.cerca_nome();
			
			try (PreparedStatement ps = connection.prepareStatement(query)) {
				
				ps.setInt(1, ID);
				ResultSet rs = ps.executeQuery(); 
                ProdottoExtractor  prd = new ProdottoExtractor();
                Prodotto prodotto= new Prodotto();
                while (rs.next()) {
                	prodotto=prd.extract(rs);
                }
                return prodotto;
			}	
		}
	}
	
	public int restituisciQuantita(int ID) throws SQLException {
		try (Connection connection= createConnection()){
			String query= ProdottoQuery.cerca_quantita();
			
			try (PreparedStatement ps= connection.prepareStatement(query)){
				
				ps.setInt(1, ID);
				ResultSet rs= ps.executeQuery();
				ProdottoExtractor prd= new ProdottoExtractor();
				Prodotto prodotto= new Prodotto();
				while(rs.next()) {
					prodotto=prd.extract(rs);
				}
				return prodotto.getQuantita();
			}
		}
	}


	public void doUpdateCatalogo(Prodotto prd) throws SQLException {
		try (Connection connection= createConnection()){
			String query= ProdottoQuery.aggiornaProdotto();
			
			System.out.print(query);
			try (PreparedStatement ps= connection.prepareStatement(query)){
				
				ps.setInt(1, prd.getQuantita());
				ps.setDouble(2, prd.getPrezzo());
				ps.setInt(3, prd.getIdProdotto());
				ps.executeUpdate();
				return;
			}
		}
	}


	public void doDelete(Prodotto prd) throws SQLException {
		try (Connection connection= createConnection()){
			String query= ProdottoQuery.rimuovi_prodotto();
			
			try (PreparedStatement ps= connection.prepareStatement(query)){
				
				ps.setInt(1, prd.getIdProdotto());
				ps.executeUpdate();
				return;
			}
		}
	}
	
	public void doSave(Prodotto prd) throws SQLException{
		
	}
}