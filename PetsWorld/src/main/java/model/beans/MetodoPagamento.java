package model.beans;

import java.io.Serializable;

public class MetodoPagamento implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdMetodoPagamento;
	private String tipo;
	private String numero;
	private String proprietario;
	private String dataScadenza;
	private String codice;
	
	public int getIdMetodoPagamento() {
		return IdMetodoPagamento;
	}
	public void setIdMetodoPagamento(int idMetodoPagamento) {
		IdMetodoPagamento = idMetodoPagamento;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
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
	public String getDataScadenza() {
		return dataScadenza;
	}
	public void setDataScadenza(String dataScadenza) {
		this.dataScadenza = dataScadenza;
	}
	public String getCodice() {
		return codice;
	}
	public void setCodice(String codice) {
		this.codice = codice;
	}
	@Override
	public String toString() {
		return "MetodoPagamento [IdMetodoPagamento=" + IdMetodoPagamento + ", tipo=" + tipo + ", numero=" + numero
				+ ", proprietario=" + proprietario + ", dataScadenza=" + dataScadenza + ", codice=" + codice + "]";
	}
	
}
