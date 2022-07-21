package model.beans;

import java.io.Serializable;

public class MetodoPagamento implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdUtente;
	private String numero;
	private String proprietario;
	private String meseScadenza;
	private String annoScadenza;
	private String cvv;

	public int getIdUtente() {
		return IdUtente;
	}
	public void setIdUtente(int idUtente) {
		IdUtente = idUtente;
	}

	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getProprietario() {
		return proprietario;
	}
	public void setProprietario(String proprietario) {
		this.proprietario = proprietario;
	}
	public String getMeseScadenza() {
		return meseScadenza;
	}
	public void setMeseScadenza(String meseScadenza) {
		this.meseScadenza = meseScadenza;
	}
	public String getAnnoScadenza() {
		return annoScadenza;
	}
	public void setAnnoScadenza(String annoScadenza) {
		this.annoScadenza = annoScadenza;
	}
	public String getCvv() {
		return cvv;
	}
	public void setCvv(String cvv) {
		this.cvv = cvv;
	}
	@Override
	public String toString() {
		return "MetodoPagamento [IdUtente=" + IdUtente + ", numero=" + numero + ", proprietario=" + proprietario
				+ ", meseScadenza=" + meseScadenza + ", annoScadenza=" + annoScadenza + ", cvv=" + cvv + "]";
	}
		
}
