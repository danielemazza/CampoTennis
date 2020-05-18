package javaBean;


import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


public class UserList implements Serializable {
	static final long serialVersionUID=1L;
	
	private List<Utente> userList = new ArrayList<Utente>();

	public List<Utente> getUserList() {
		return userList;
	}
	
	
	
}
