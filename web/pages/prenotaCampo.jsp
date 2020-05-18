
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!-- import di classi Java -->
<%@ page import="javaBean.UserList"%>
<%@ page import="javaBean.Utente"%>
<%@ page import="java.util.List"%>  
<%@ page import="javaBeanCampo.Campo"%>
<%@ page import="javaBeanCampo.Prenotazione"%>    
<%@ page import="javaBeanCampo.PrenotazioneList"%> 
<%@ page import="java.time.LocalTime"%>
<%@ page import="java.time.LocalDate"%>

<%@ page session="true" %>
    
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Prenotazione campo</title>

<%!
	void prenota(Prenotazione pren, PrenotazioneList pList){
		{
			boolean occupato = false;
			for(Prenotazione pr : pList.getPrenotazioneList()){
				if(pr.getCampo()==pren.getCampo() && pr.getData()==pren.getData() && pr.getTime()==pren.getTime()){
					if(pr.getGiocatori()==2){
						occupato=true;
					}
					else if(pr.getGiocatori()==1){
						if(pr.getLivello() == pren.getLivello()){
							occupato = false;
							pr.setGiocatori(2);
						}
						else{
							occupato=true;
						}
					}
					else if(pr.getGiocatori()==0){
						occupato=false;
						pr.setGiocatori(1);
					}
				}
			}
			if(occupato = false){
				pList.getPrenotazioneList().add(pren);
			}	
		}
	}
%>

</head>


<body>
<h1>Prenota Campo</h1>

<form name="prenotazioneForm">
	<label>Data di prenotazione</label><br>
	<input type="date" name="date"><br>
	<label>Orario di prenotazione</label><br>
	<input type="time" name="ora"><br>
	<label>Campo</label><br>
	<input type="number" min="1" max="4" name="campo"><br>
	<input type="submit" name="prenota" value="Prenota">
</form>


<jsp:useBean id="prenotazioneList" class="javaBeanCampo.PrenotazioneList" scope="application"/>
<%
	
if(request.getParameter("prenota")!=null && request.getParameter("prenota").equals("Prenota")){
	Prenotazione pren=new Prenotazione();
	pren.setCampo(Integer.parseInt(request.getParameter("campo")));
	pren.setData(LocalDate.parse(request.getParameter("date")));
	pren.setTime(LocalTime.parse(request.getParameter("time")));
	String livello = (String) session.getAttribute("livello");
	pren.setLivello(livello);
	prenota(pren, prenotazioneList); 
}

%>

<%-- <p><%=session.getAttribute("livello") %></p>
<p><%=session.getAttribute("user") %></p> --%>



</body>
</html>