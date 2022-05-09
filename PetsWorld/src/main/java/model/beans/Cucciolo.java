package model.beans;

import java.io.Serializable;

public class Cucciolo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdCucciolo;
	private int età;
	private String nome;
	private String tipo;
	private String razza;
	
	public int getIdCucciolo() {
		return IdCucciolo;
	}
	public void setIdCucciolo(int idCucciolo) {
		IdCucciolo = idCucciolo;
	}
	public int getEtà() {
		return età;
	}
	public void setEtà(int età) {
		this.età = età;
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
	public String getRazza() {
		return razza;
	}
	public void setRazza(String razza) {
		this.razza = razza;
	}
	@Override
	public String toString() {
		return "Cucciolo [IdCucciolo=" + IdCucciolo + ", età=" + età + ", nome=" + nome + ", tipo=" + tipo + ", razza="
				+ razza + "]";
	}
	
}
