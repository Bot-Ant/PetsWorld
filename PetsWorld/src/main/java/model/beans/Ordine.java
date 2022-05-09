package model.beans;

import java.io.Serializable;

public class Ordine implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdOrdine;
	private String dataOrdine;
	private String statusOrdine;
	private double totale;
	private String pagamento;
	private String indirizzo;
	
	public int getIdOrdine() {
		return IdOrdine;
	}
	public void setIdOrdine(int idOrdine) {
		IdOrdine = idOrdine;
	}
	public String getDataOrdine() {
		return dataOrdine;
	}
	public void setDataOrdine(String dataOrdine) {
		this.dataOrdine = dataOrdine;
	}
	public String getStatusOrdine() {
		return statusOrdine;
	}
	public void setStatusOrdine(String statusOrdine) {
		this.statusOrdine = statusOrdine;
	}
	public double getTotale() {
		return totale;
	}
	public void setTotale(double totale) {
		this.totale = totale;
	}
	public String getPagamento() {
		return pagamento;
	}
	public void setPagamento(String pagamento) {
		this.pagamento = pagamento;
	}
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return "Ordine [dataOrdine=" + dataOrdine + ", statusOrdine=" + statusOrdine + ", totale=" + totale
				+ ", pagamento=" + pagamento + ", indirizzo=" + indirizzo + "]";
	}

}
