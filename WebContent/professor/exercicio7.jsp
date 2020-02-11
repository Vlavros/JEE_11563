<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercicio 7 Java WEB</title>
</head>
<body>
	<br />
	<%
		Integer num = 1 + (int) (100 * Math.random());
		if (num % 2 == 0) {
	%>
			<jsp:forward page="exercicio7_par.jsp">
				<jsp:param value="<%=num%>" name="num"/>
			</jsp:forward>

	<%
		} else {
	%>
			<jsp:forward page="exercicio7_impar.jsp">
				<jsp:param value="<%=num%>" name="num"/>
			</jsp:forward>
	<%
		}
	%>

	<br /></body>
</html>