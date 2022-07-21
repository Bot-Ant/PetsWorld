package model.beans;

import java.io.Serializable;
import java.util.ArrayList;

public class Utente implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdUtente;
	private String nome;
	private String cognome;
	private String email;
	private String password;
	private String telefono;
	private int ruolo;
	private String codiceFiscale;
	private ArrayList<MetodoPagamento> MetodiPagamento;
	private ArrayList<Indirizzo> indirizziSpedizione;
	
	public String getCodiceFiscale() {
		return codiceFiscale;
	}
	public void setCodiceFiscale(String codiceFiscale) {
		this.codiceFiscale = codiceFiscale;
	}
	public int getIdUtente() {
		return IdUtente;
	}
	public void setIdUtente(int idUtente) {
		IdUtente = idUtente;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public int isRuolo() {
		return ruolo;
	}
	public void setRuolo(int ruolo) {
		this.ruolo = ruolo;
	}
	
	
	public ArrayList<MetodoPagamento> getMetodiPagamento() {
		return MetodiPagamento;
	}
	public void setMetodiPagamento(ArrayList<MetodoPagamento> MetodiPagamento) {
		this.MetodiPagamento = MetodiPagamento;
	}
	public ArrayList<Indirizzo> getIndirizziSpedizione() {
		return indirizziSpedizione;
	}
	public void setIndirizziSpedizione(ArrayList<Indirizzo> indirizziSpedizione) {
		this.indirizziSpedizione = indirizziSpedizione;
	}
	
	@Override
	public String toString() {
		return "Utente [IdUtente=" + IdUtente + ", nome=" + nome + ", cognome=" + cognome + ", email=" + email
				+ ", password=" + password + ", telefono=" + telefono + ", ruolo=" + ruolo + ", codiceFiscale="
				+ codiceFiscale + ", MetodiPagamento=" + MetodiPagamento + ", indirizziSpedizione="
				+ indirizziSpedizione + "]";
	}
}

   
