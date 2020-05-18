<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- import di classi Java -->
<%@ page import="javaBean.UserList"%>
<%@ page import="javaBean.Utente"%>
<%@ page import="java.util.List"%>  

<%@ page session="true" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>autenticati</title>
<%!
	String accedi(Utente u, UserList ul ){
	
	String autenticato="false";
	for(Utente ut : ul.getUserList()){
		if((ut.getUserName().equals(u.getUserName()))&&(ut.getPsw().equals(u.getPsw()))){
			autenticato="true";
			break;
		}
		else{
			autenticato=ut.getUserName();
		}
	}
	return autenticato;
	}

	String livello(Utente u, UserList ul){
		String livello=null;
		for(Utente ut : ul.getUserList()){
			if((ut.getUserName().equals(u.getUserName()))&&(ut.getPsw().equals(u.getPsw()))){
				livello=ut.getLivello();
			}
		}
		return livello;
	}
%>

</head>
<body>
<h1>Autenticati</h1>
<form name="autenticatiForm" method="post">
	<label>Username</label><br>
	<input name="user" type="text"><br>
	<label>Password</label><br>
	<input name="psw" type="text"><br>
	<br>
	<input type="submit" name="accedi" value="Accedi">
</form>


<jsp:useBean id="userList" class="javaBean.UserList" scope="application"/>
<%
	
		String accedi="false";
		String livello = null;
		String err = null;
			if(request.getParameter("accedi")!=null && request.getParameter("accedi").equals("Accedi")){
				Utente accesso = new Utente();
				accesso.setUserName(request.getParameter("user"));
				accesso.setPsw(request.getParameter("psw"));
				accedi = accedi(accesso, userList);
				livello = livello(accesso, userList);
		}
		if(accedi=="true"){
			request.getSession();
			session.setAttribute("user", request.getParameter("user"));
			session.setAttribute("livello", livello);
			response.sendRedirect("prenotaCampo.jsp");	
		}
		else {
			err = "user nno trovato";
		}
	
%>


</body>
</html>