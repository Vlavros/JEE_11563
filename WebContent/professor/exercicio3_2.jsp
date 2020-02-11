<%@page import="java.util.Date"%>
<%@ page language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" >
<title>Exercicio3_2 Java WEB</title>
</head>
<body>

	<%
		// Isso é um scriptlet
		//System.out.println("Passar parametro nome=Jose&sobrenome=Silva");
	
		String n1 = request.getParameter("n1");
		String n2 = request.getParameter("n2");
		Double soma = n1!=null&n2!=null ? Double.valueOf(n1)+Double.valueOf(n2) : null;
	%>
	
	<br>
	<%
		if(soma!=null){
			out.print("A soma de " + n1 + " e " + n2 +  " é " + soma);
		} else {
			out.print("Você precisa passar dois valores numéricos!");
		}
	%>

</body>
</html>