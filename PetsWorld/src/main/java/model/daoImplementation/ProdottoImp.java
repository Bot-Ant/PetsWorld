package model.daoImplementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;
import model.Manager;
import model.beans.Prodotto;
import model.daoInterface.ProdottoDao;
import model.query.ProdottoQuery;
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
					System.out.println(query);
                ResultSet rs = ps.executeQuery();
                ProdottoExtractor  prd = new ProdottoExtractor();
                List<Prodotto> listaProdotti = new ArrayList<>();
                
                while (rs.next()) {
                	listaProdotti.add(prd.extract(rs));
                }
                System.out.println(listaProdotti);
                return listaProdotti;
            }
        }
    }
	

}
