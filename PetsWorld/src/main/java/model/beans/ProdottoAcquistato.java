package model.beans;

import java.io.Serializable;

public class ProdottoAcquistato implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int quantita;
	private String foto;
	private double prezzo;
	private double iva;
	private int IdOrdine;
	private String nome;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getQuantita() {
		return quantita;
	}
	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	public double getIva() {
		return iva;
	}
	public void setIva(double iva) {
		this.iva = iva;
	}
	public int getIdOrdine() {
		return IdOrdine;
	}
	public void setIdOrdine(int idOrdine) {
		IdOrdine = idOrdine;
	}
	@Override
	public String toString() {
		return "ProdottoAcquistato [quantita=" + quantita + ", foto=" + foto + ", prezzo=" + prezzo + ", iva=" + iva
				+ ", IdOrdine=" + IdOrdine + ", nome=" + nome + "]";
	}
	
}
