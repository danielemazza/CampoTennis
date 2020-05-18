<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- pagina per la gestione di errori -->
<%-- %@ page errorPage="../errors/failure.jsp"%> --%>
<%@ page errorPage="../errors/exception.html" %>

<!-- import di classi Java -->
<%@ page import="javaBean.UserList"%>
<%@ page import="javaBean.Utente"%>
<%@ page import="java.util.List"%>

<!-- metodi richiamati nel seguito -->
<%!
String registrati(Utente u, UserList ul) throws Exception
{
	boolean alreadyReg=false;
	
	for(Utente utenteRegistrato : ul.getUserList() ){
		if((utenteRegistrato.getUserName().equals(u.getUserName()))&&(utenteRegistrato.getPsw().equals(u.getPsw()))){
			alreadyReg=true;
			//throw new Exception ("Utente già registrato");
		}
	}
	
	
	if(!alreadyReg){
		 if(!u.getLivello().equals("A") && !u.getLivello().equals("B") && !u.getLivello().equals("C") && !u.getLivello().equals("D") && !u.getLivello().equals("E")
				&& !u.getLivello().equals("a") && !u.getLivello().equals("b") && !u.getLivello().equals("c") && !u.getLivello().equals("d") && !u.getLivello().equals("e")){
			return "livello non consentito";
		} 
		 else{
			 ul.getUserList().add(u);
			 return "ok";
		 }
	}   
	return "casino";
	 
}
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrati</title>

</head>
<body>
<h1>Registrati</h1>
<div id="main">

<form name="registratiForm">
		<label>Username</label><br>
		<input type="text" name="userReg"><br>
		<label>Password</label><br>
		<input type="text" name="pswReg"><br>
		<label>Livello di Abilità</label><br>
		<input type="text" name="livello">
		<br>
		<input type="submit" name="reg" value="Registrati" onclick="registratiClick()">
	</form>
	

	<jsp:useBean id="userList" class="javaBean.UserList" scope="application" />
		<% 
		String risultato=null;
		String risultato2=null;
		
		if(request.getParameter("reg")!= null && request.getParameter("reg").equals("Registrati")) {
			Utente utente = new Utente();
			utente.setUserName(request.getParameter("userReg"));
			utente.setPsw(request.getParameter("pswReg"));
			utente.setLivello(request.getParameter("livello"));
			risultato2 = registrati(utente, userList); 
			risultato="ok";
			response.sendRedirect("autenticati.jsp");
		}
		else{
			risultato="Ho saltato if";
		}
	%>
	
	
	
	<%-- <h1> username:  <%= request.getParameter("userReg") %></h1> --%>
	
	<%-- <h1>Livello: <%=request.getParameter("livello") %></h1>
	<h1>Utente registrato: <%=request.getParameter("userReg") %></h1>
	
	<h1><%= risultato %></h1>
	<h1><%= risultato2 %></h1> --%>
	
</div>

</body>
</html>