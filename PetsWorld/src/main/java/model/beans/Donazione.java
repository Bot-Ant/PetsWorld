package model.beans;

import java.io.Serializable;

public class Donazione implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdDonazione;
	private double prezzo;
	
	public int getIdDonazione() {
		return IdDonazione;
	}
	public void setIdDonazione(int idDonazione) {
		IdDonazione = idDonazione;
	}
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	
	@Override
	public String toString() {
		return "Donazione [IdDonazione=" + IdDonazione + ", prezzo=" + prezzo + "]";
	}
	
}
