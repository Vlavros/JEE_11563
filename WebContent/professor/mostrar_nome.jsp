<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Colocando o parâmetro na sessão</title>
</head>

<body>
	<table width="1024" height=100 bgcolor="bbffee">
		<tr>
			<td width="100%" align="center">
				<%
					String nome = request.getParameter("username");
					session.setAttribute("seuNome", nome);
				%> <a href="proxima_pagina.jsp">Continue</a>
			</td>
		</tr>
	</table>

</body>


</html>