<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aula 03 - 03/02/2020 - 03</title>
</head>
<body>

	<table border="2">
		<%
		boolean hello = false;
		if(hello) {
			out.print("Olá! <br>");
		} else {
			out.print("Adeus! <br>");
		}
		
		//request.setCharacterEncoding("UTF-8");
		String nome = request.getParameter("nome");
		%>
	</table>
	
	joão
	<br>
	
	<%=nome%>
	
	

</body>
</html>