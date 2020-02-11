<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplo scriptles Java WEB</title>
</head>
<body>

	<%
		// Isso é um scriptlet
		System.out.println("Criando o objeto data");
		Date data = new Date();
	%>
	Olá! Agora o horário local é:
	<br>
	<%-- <%= data %> --%>
	<%
		out.print(String.valueOf(data));
		out.print("<BR>Seu endereço IP é: ");
		out.print(request.getRemoteHost());
	%>

</body>
</html>