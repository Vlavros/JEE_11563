<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercício 2 Java WEB</title>
</head>
<body>

	Cálculos do exercício 2
	<br/>
	<br/>
 	2 &#43; 2 = <%=2+2%>
 	<br/>
 	13 &#45; 7 = <%=13-7%>
 	<br/>
 	8 &times; 3 = <%=8*3%>
 	<br/>
 	26 &divide; 4 = <%=26.0/4%>
 	<br/>
 	3 elevado a 4ª potência é <%=(int)Math.pow(3,4)%>
 	<br/>
 	A raiz quadrada de 81 é <%=(int)Math.sqrt(81)%>
 	<br/>
 	Um número aleatório = <%=1+(int)(100*Math.random())%>
 	<br/>
 	
</body>
</html>