package model.beans;

import java.io.Serializable;
import java.util.ArrayList;

public class Carrello implements Serializable{
	private static final long serialVersionUID = 1L;

	ArrayList<Prodotto> prodotti;
	int quantita;
	float prezzoTotale;
	
	public Carrello()
	{
		prodotti = new ArrayList<Prodotto>();
		quantita = -1;
		prezzoTotale = 0;
	}
	
	public float getPrezzoTotale() {
		return prezzoTotale;
	}

	public void setPrezzoTotale(float prezzo) {
		this.prezzoTotale += prezzo;
	}
	
	public void setPrezzoTotaleRimozione(float prezzo) {
		this.prezzoTotale -= prezzo;
	}
	
	public ArrayList<Prodotto> getProdotti ()
	{
		return prodotti;
	}
	
	public void setProdotti(ArrayList<Prodotto> prodotti) {
		this.prodotti = prodotti;
	}

	public void addProdotto(Prodotto prodotto) 
	{
		prodotti.add(prodotto);
	}

	public void svuotaCarrello ()
	{
		prodotti.removeAll(prodotti);
	}
	
	public int getQuantita()
	{
		int count=0;
		for(int i=0; i<prodotti.size();i++)
			count += prodotti.get(i).getQuantità();
		return count;
	}	
}