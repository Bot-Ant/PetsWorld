package model.beans;

import java.io.Serializable;

public class Cucciolo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int IdCucciolo;
	private int et�;
	private String nome;
	private String tipo;
	private String razza;
	private String foto;
	
	public int getIdCucciolo() {
		return IdCucciolo;
	}
	public void setIdCucciolo(int idCucciolo) {
		IdCucciolo = idCucciolo;
	}
	public int getEt�() {
		return et�;
	}
	public void setEt�(int et�) {
		this.et� = et�;
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
	public String getFoto() {
		return foto;
	}
	public void setFoto(String foto) {
		this.foto = foto;
	}
	@Override
	public String toString() {
		return "Cucciolo [IdCucciolo=" + IdCucciolo + ", et�=" + et� + ", nome=" + nome + ", tipo=" + tipo + ", razza="
				+ razza + ", foto=" + foto + "]";
	}
	
}
