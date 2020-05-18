package javaBeanCampo;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalTime;

public class Prenotazione implements Serializable {
	private final static long serialVersionUID=1L;
	
	LocalDate data;
	LocalTime time;
	int campo;
	String livello;
	int giocatori;
	
	public int getGiocatori() {
		return giocatori;
	}

	public void setGiocatori(int giocatori) {
		this.giocatori = giocatori;
	}

	public Prenotazione() {}

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}

	public LocalTime getTime() {
		return time;
	}

	public void setTime(LocalTime time) {
		this.time = time;
	}

	public int getCampo() {
		return campo;
	}

	public void setCampo(int campo) {
		this.campo = campo;
	}

	public String getLivello() {
		return livello;
	}

	public void setLivello(String livello) {
		this.livello = livello;
	}
	
	
	
	
}
