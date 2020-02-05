<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aula 04 - 04/02/2020 - 03 - PAR</title>
<style>
	.vermelho {
		color: red;
	}
	.azul {
		color: blue;
	}
	.tab {
		padding-left:2em;
	}
</style>


</head>
<body>

<%
	Integer num;
	try{
		num = Integer.valueOf(request.getParameter("num"));
		out.print("O número aleatório é: " + num);
		out.print("<br>");	
		
		if(!(num%2 == 0)) throw new Exception("impar");
		
		out.print("<span class='azul'>Esse número é PAR</span>");
	} catch(Exception e) {
		out.print("O número recebido é inválido.");
	}

%>	

	

</body>
</html>