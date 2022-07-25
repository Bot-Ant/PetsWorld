package model.search;

public class Condition {
	
	private final String name;
	private final Operatore operator;
	private final Object value;

	public Condition(String name, Operatore operator, Object value) {
		this.name = name; //rappresenta il valore di ricerca sulla sinistra della nostra ricerca
		this.operator = operator; // l'operatore che viene applicato 
		this.value = value; // il valore che sto cercando la parte di destra 
	}
	
	public String toString() {return name + operator;}
	
	public String getName() {return name;}

	public Operatore getOperator() {return operator;}
	
	public Object getValue() {return value;}
	
}