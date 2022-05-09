package model.search;

public class Condition {
	
	private final String name;
	private final Operatore operator;
	private final Object value;

	public Condition(String name, Operatore operator, Object value) {
		this.name = name;
		this.operator = operator;
		this.value = value;
	}
	
	public String toString() {return name + operator;}
	
	public String getName() {return name;}

	public Operatore getOperator() {return operator;}
	
	public Object getValue() {return value;}
	
}