<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplo getData() Java WEB</title>
</head>
<body>

	<%!
		Date data = new Date();
		Date getData() {
			System.out.println("Dentro do método getData()");
			return data;
		}
	%>
	<h2 align="center">Olá! Agora o horário local é:
	<br>
	<%= getData() %></h2>
	

</body>
</html>