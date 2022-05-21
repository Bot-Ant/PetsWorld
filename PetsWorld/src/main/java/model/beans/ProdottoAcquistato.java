package model.beans;

import java.io.Serializable;

public class ProdottoAcquistato implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdProdottoAcquistato;
	private String nome;
	private String tipo;
	private int quantità;
	private String foto;
	private double prezzo;
	private double iva;
	private double peso;
	private String dataScadenza; 
	private String dimensione;
	private String colore;
	
	public int getIdProdottoAcquistato() {
		return IdProdottoAcquistato;
	}
	public void setIdProdottoAcquistato(int idProdottoAcquistato) {
		IdProdottoAcquistato = idProdottoAcquistato;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public int getQuantità() {
		return quantità;
	}
	public void setQuantità(int quantità) {
		this.quantità = quantità;
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
	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}
	public String getDataScadenza() {
		return dataScadenza;
	}
	public void setDataScadenza(String dataScadenza) {
		this.dataScadenza = dataScadenza;
	}
	public String getDimensione() {
		return dimensione;
	}
	public void setDimensione(String dimensione) {
		this.dimensione = dimensione;
	}
	public String getColore() {
		return colore;
	}
	public void setColore(String colore) {
		this.colore = colore;
	}
	@Override
	public String toString() {
		return "ProdottoAcquistato [IdProdottoAcquistato=" + IdProdottoAcquistato + ", nome=" + nome + ", tipo=" + tipo
				+ ", quantità=" + quantità + ", foto=" + foto + ", prezzo=" + prezzo + ", iva=" + iva + ", peso=" + peso
				+ ", dataScadenza=" + dataScadenza + ", dimensione=" + dimensione + ", colore=" + colore + "]";
	}
	
}
