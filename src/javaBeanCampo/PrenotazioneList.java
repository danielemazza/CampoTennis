package javaBeanCampo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;



public class PrenotazioneList implements Serializable {
	private static final long serialVersionUID=1L;
	
	private List<Prenotazione> prenotazioneList = new ArrayList<Prenotazione>();

	public List<Prenotazione> getPrenotazioneList() {
		return prenotazioneList;
	}
}
