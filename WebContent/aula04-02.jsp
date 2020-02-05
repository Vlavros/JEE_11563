<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript">

$( function() {
	alert("aaa");
	
});
</script>

<title>Aula 04 - 04/02/2020 - 02 - GETDATE</title>

<style>
footer {
    position: absolute;
    bottom: 0;
}
</style>

</head>
<body>
	
	<%!
		Date data = new Date();
		Date getData() {
			return data;
		}
		
		Integer getAno() {
			return data.getYear();
		}
		
		//Date getYear() {
		//	return 0;
		//}
	%>
	
	<h2>Olá! Agora o horário local é: </h2>
	<%=getData() %>
	<h2> O ano é <%=getAno()%></h2>
	

</body>
</html>