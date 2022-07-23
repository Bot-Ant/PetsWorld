package model.beans;

import java.io.Serializable;
import java.time.LocalDate;

public class Ordine implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdOrdine;
	private double totale;
	private int pagamento;
	private int indirizzo;
	private int idUtente;
	private String dataOrdine;

	public int getIdUtente() {
		return idUtente;
	}
	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}
	public int getIdOrdine() {
		return IdOrdine;
	}
	public void setIdOrdine(int idOrdine) {
		IdOrdine = idOrdine;
	}
	public double getTotale() {
		return totale;
	}
	public void setTotale(double totale) {
		this.totale = totale;
	}
	public int getPagamento() {
		return pagamento;
	}
	public void setPagamento(int pagamento) {
		this.pagamento = pagamento;
	}
	public int getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(int indirizzo) {
		this.indirizzo = indirizzo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getDataOrdine() {
		return dataOrdine;
	}
	public void setDataOrdine(String dataOrdine) {
		this.dataOrdine = dataOrdine;
	}
	@Override
	public String toString() {
		return "Ordine [IdOrdine=" + IdOrdine + ", totale=" + totale + ", pagamento=" + pagamento + ", indirizzo="
				+ indirizzo + ", idUtente=" + idUtente + ", dataOrdine=" + dataOrdine + "]";
	}

}
