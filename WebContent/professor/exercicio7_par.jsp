<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercicio 7 é par Java WEB</title>
</head>
<body>
	<br />
	<h1>
	<%
		String num = request.getParameter("num");
		out.println("<font color=\"0000FF\">O número aleatório " + num + " é par</font>");
	%>
	</h1>
	<br />
</body>
</html>