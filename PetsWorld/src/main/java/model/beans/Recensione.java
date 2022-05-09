package model.beans;

import java.io.Serializable;

public class Recensione implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdRecensione;
	private String data;
	private String descrizione;
	private int valutazione;
	
	public int getIdRecensione() {
		return IdRecensione;
	}
	public void setIdRecensione(int idRecensione) {
		IdRecensione = idRecensione;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public int getValutazione() {
		return valutazione;
	}
	public void setValutazione(int valutazione) {
		this.valutazione = valutazione;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "Recensione [IdRecensione=" + IdRecensione + ", data=" + data + ", descrizione=" + descrizione
				+ ", valutazione=" + valutazione + "]";
	}
	
}
