package model.beans;

import java.io.Serializable;

public class Indirizzo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
	private String citt�;
	private String nome_strada;
	private String civico;
	private String CAP;
	private String provincia;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCitt�() {
		return citt�;
	}
	public void setCitt�(String citt�) {
		this.citt� = citt�;
	}
	public String getNome_strada() {
		return nome_strada;
	}
	public void setNome_strada(String nome_strada) {
		this.nome_strada = nome_strada;
	}
	public String getCivico() {
		return civico;
	}
	public void setCivico(String civico) {
		this.civico = civico;
	}
	public String getCAP() {
		return CAP;
	}
	public void setCAP(String cAP) {
		CAP = cAP;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	@Override
	public String toString() {
		return "Indirizzo [email=" + email + ", citt�=" + citt� + ", nome_strada=" + nome_strada + ", civico=" + civico
				+ ", CAP=" + CAP + ", provincia=" + provincia + "]";
	}
	
}
