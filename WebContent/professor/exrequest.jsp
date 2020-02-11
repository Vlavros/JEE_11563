<%@page import="java.util.Date"%>
<%@ page language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" >
<title>Exemplo request Java WEB</title>
</head>
<body>

	<%
		// Isso é um scriptlet
		System.out.println("Passar parametro nome=Jose&sobrenome=Silva");
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
	%>
	
	<br>
	<%-- <%= data %> --%>
	<%
		out.print("Os parâmetros informados foram : " + String.valueOf(nome) + " e " + String.valueOf(sobrenome));
	%>

</body>
</html>