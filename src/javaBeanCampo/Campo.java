package javaBeanCampo;

import java.io.Serializable;

public class Campo implements Serializable {

	private static final long serialVersionUID = 1L;
	
	int numeroCampo;
	
	public Campo() {}

	public int getNumeroCampo() {
		return numeroCampo;
	}

	public void setNumeroCampo(int numeroCampo) {
		this.numeroCampo = numeroCampo;
	}
	
	
	
	
}
