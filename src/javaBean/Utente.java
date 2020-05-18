package javaBean;

import java.io.Serializable;

public class Utente implements Serializable {
	private static final long serialVersionUID=1L;
	
	String userName;
	String psw;
	String livello;
	
	public Utente() {}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPsw() {
		return psw;
	}

	public void setPsw(String psw) {
		this.psw = psw;
	}

	public String getLivello() {
		return livello;
	}

	public void setLivello(String livello) {
		this.livello = livello;
	}
	
	
}
