<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aula 03 - 03/02/2020 - 02</title>
</head>
<body>

	<table border="2">
		<%
			for(int i=1; i<=10; i++) {			
				out.print("<tr>");		
				out.print("<td>Número</td>");
				out.print("<td>"+(i<10?"0"+i:i)+"</td>");
				out.print("</tr>");
			}
		
		request.setCharacterEncoding("UTF-8");
		String nome = request.getParameter("nome");
		%>
	</table>
	
	joão
	<br>
	
	<%=nome%>
	
	

</body>
</html>