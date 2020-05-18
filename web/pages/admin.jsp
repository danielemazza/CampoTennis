<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page session="true" %>

<!-- import di classi Java -->
<%@ page import="javaBean.UserList"%>
<%@ page import="javaBean.Utente"%>
<%@ page import="java.util.List"%>  
<%@ page import="javaBeanCampo.Campo"%>
<%@ page import="javaBeanCampo.Prenotazione"%>    
<%@ page import="javaBeanCampo.PrenotazioneList"%> 
<%@ page import="java.time.LocalTime"%>
<%@ page import="java.time.LocalDate"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
</head>
<body>

<form name="adminForm">
	<label>Inserisci la data</label><br>
	<input type="date" name="data"/><br>
	<input type="submit" name="cerca" value="Cerca"/><br>
</form>

<jsp:useBean id="prenotazioneList" class="javaBeanCampo.PrenotazioneList" scope="session"/>
<table>
					<% 
					Prenotazione[] pr = prenotazioneList.getPrenotazioneList().toArray(new Prenotazione[0]);
					for( Prenotazione p : pr ){  
					%> 
						<tr>
							<td><%= p.getCampo() %></td>
							<td><%= p.getData().toString() %></td>
							<td><%= p.getTime().toString() %></td>
							<td><%= p.getGiocatori()%></td>
							<td><%= p.getLivello()%></td>
							
						</tr>
					<% } %>

</table>
</body>
</html>