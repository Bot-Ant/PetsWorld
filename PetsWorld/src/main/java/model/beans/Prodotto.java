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
	private double iva;
	private String dataScadenza;
	private String dimensione;
	private String colore;
	private String peso;
	private int quantita;
	private String animale;
	private String foto;
	private FotoProdotto fotografia;
	
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
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

	public String getPeso() {
		return peso;
	}
	public void setPeso(String peso) {
		this.peso = peso;
	}
	public int getQuantita() {
		return quantita;
	}
	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}
	
	public String getAnimale() {
		return animale;
	}
	public void setAnimale(String animale) {
		this.animale = animale;
	}
	public FotoProdotto getFotografia() {
		return fotografia;
	}
	public void setFotografia(FotoProdotto fotografia) {
		this.fotografia = fotografia;
	}
	@Override
	public String toString() {
		return "Prodotto [IdProdotto=" + IdProdotto + ", nome=" + nome + ", tipo=" + tipo + ", prezzo=" + prezzo
				+ ", descrizione=" + descrizione + ", iva=" + iva + ", dataScadenza=" + dataScadenza + ", dimensione="
				+ dimensione + ", colore=" + colore + ", peso=" + peso + ", quantita=" + quantita + ", animale="
				+ animale + ", foto=" + foto + ", fotografia=" + fotografia + "]";
	}

	
	
}
