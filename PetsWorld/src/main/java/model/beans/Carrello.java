package model.beans;

import java.io.Serializable;
import java.util.ArrayList;

public class Carrello implements Serializable{
	private static final long serialVersionUID = 1L;

	ArrayList<Prodotto> prodotti;
	int quantita;
	double prezzoTotale;
	
	public Carrello()
	{
		prodotti = new ArrayList<Prodotto>();
		quantita = -1;
		prezzoTotale = 0;
	}
	
	public double getPrezzoTotale() {
		return prezzoTotale;
	}

	public void setPrezzoTotale(double d) {
		this.prezzoTotale += d;
	}
	
	public void setPrezzoTotaleRimozione(double prezzo) {
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
	
	public void azzeraPrezzoTotale()
	{
		prezzoTotale=0;
	}
	
	public int getQuantita()
	{
		int count=0;
		for(int i=0; i<prodotti.size();i++)
			count += prodotti.get(i).getQuantita();
		return count;
	}	
}