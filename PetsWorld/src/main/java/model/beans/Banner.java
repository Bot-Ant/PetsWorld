package model.beans;

import java.io.Serializable;

public class Banner implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idBanner;
	private String immagine;
	private String nome;
	
	public int getIdBanner() {
		return idBanner;
	}
	public void setIdBanner(int idBanner) {
		this.idBanner = idBanner;
	}
	public String getImmagine() {
		return immagine;
	}
	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	@Override
	public String toString() {
		return "Banner [IdBanner=" + idBanner + ", immagine=" + immagine + ", nome=" + nome + "]";
	}
	
}
