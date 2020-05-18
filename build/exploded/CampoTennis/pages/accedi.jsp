<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accedi</title>
<script type="text/javascript">
	function clickRegistrati(){
		location.href="registrati.jsp"
	}
	
	function clickAutenticati(){
		location.href="autenticati.jsp"
	}
</script>
</head>
<body>
<h1>Pagina di accesso campi da tennis</h1>
<form>

	<div>
		<input type="button" name="autenticati" value="autenticati" onclick="clickAutenticati()">
		<input type="button" name="registrati" value="registrati" onclick="clickRegistrati()">
	</div>
</form>
</body>
</html>