package model.beans;

import java.io.Serializable;

public class FotoProdotto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idProdotto;
	private String foto;
	private int idFoto;
	
	public int getIdProdotto() {
		return idProdotto;
	}
	public void setIdProdotto(int idProdotto) {
		this.idProdotto = idProdotto;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public int getIdFoto() {
		return idFoto;
	}
	public void setIdFoto(int idFoto) {
		this.idFoto = idFoto;
	}
}
