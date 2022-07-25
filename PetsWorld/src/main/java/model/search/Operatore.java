package model.search;

public enum Operatore {

	//simboli che codificano l'operatore 
	
	GT, LT, EQ, NE, GE, LE, MATCH;
	
	
	public String toString() {
		return switch(this) {
		
		case LT -> " < ";
		
		case EQ -> " = ";
		
		case GE -> " >= ";
	
		case NE -> " != ";
		
		case GT -> " > ";
		
		case LE -> " <= ";
		
		case MATCH -> " LIKE ";
		
		};
	}
}
