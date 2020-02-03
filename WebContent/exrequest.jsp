<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aula 03/02/2020 - 01</title>
</head>
<body>

	<%
	//isso é um scriptlet
	System.out.println("O parâmetro informado foi: "); 
	System.out.println(request.getParameter("nome"));
	String nome = request.getParameter("nome");
	
	Double n1, n2;
	try {
		n1 = Double.valueOf(request.getParameter("n1"));
		n2 = Double.valueOf(request.getParameter("n2"));
		
		out.print("<br>A soma de n1 e n2 é: ");
		out.print(n1+n2);
		
	} catch(Exception ex) {
		out.print("Informe dois números válidos.");
	}
	
	%>
	
	<%
		out.print("<br> <br> O parâmetro nome informado foi: ");
		out.print(nome);
	%>
	
	

</body>
</html>