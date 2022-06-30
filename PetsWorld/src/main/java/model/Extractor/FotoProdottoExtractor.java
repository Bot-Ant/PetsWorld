package model.Extractor;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ResultSetExtractor;
import model.beans.FotoProdotto;


public class FotoProdottoExtractor implements ResultSetExtractor<FotoProdotto> {

	@Override
	public FotoProdotto extract(ResultSet resultSet) throws SQLException {
		// TODO Auto-generated method stub
		FotoProdotto fotoProdotto = new FotoProdotto();
		
		fotoProdotto.setIdProdotto(resultSet.getInt("ft.idProdotto"));
		fotoProdotto.setFoto(resultSet.getString("ft.foto"));
		fotoProdotto.setIdFoto(resultSet.getInt("ft.idFoto"));
		
		return fotoProdotto;
	}
	

}
