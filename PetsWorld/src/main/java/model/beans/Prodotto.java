package model.beans;

import java.io.Serializable;

public class Prodotto implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdProdotto;
	private String nome;
	private String tipo;
	private double prezzo;
	private String descrizione;
	private String foto;
	private double iva;
	private String dataScadenza;
	private String dimensione;
	private String colore;
	private double peso;
	private int quantità;
	private String animale;
	
	public int getIdProdotto() {
		return IdProdotto;
	}
	public void setIdProdotto(int idProdotto) {
		IdProdotto = idProdotto;
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
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	public double getIva() {
		return iva;
	}
	public void setIva(double iva) {
		this.iva = iva;
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
	public double getPeso() {
		return peso;
	}
	public void setPeso(double peso) {
		this.peso = peso;
	}
	public int getQuantità() {
		return quantità;
	}
	public void setQuantità(int quantità) {
		this.quantità = quantità;
	}
	@Override
	public String toString() {
		return "Prodotto [IdProdotto=" + IdProdotto + ", nome=" + nome + ", tipo=" + tipo + ", prezzo=" + prezzo
				+ ", descrizione=" + descrizione + ", foto=" + foto + ", iva=" + iva + ", dataScadenza=" + dataScadenza
				+ ", dimensione=" + dimensione + ", colore=" + colore + ", peso=" + peso + ", quantità=" + quantità
				+ "]";
	}
	public String getAnimale() {
		return animale;
	}
	public void setAnimale(String animale) {
		this.animale = animale;
	}
	
	
}
