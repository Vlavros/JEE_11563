<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercicio 4.3 Java WEB</title>
</head>
<body>
	<br />
	<%
		Integer valor1 = Integer.valueOf(request.getParameter("v1"));
 		Integer valor2 = Integer.valueOf(request.getParameter("v2"));
 		Double resultado;
 		String operacao = request.getParameter("op");

		if("soma".equals(operacao)) {
 			resultado = valor1 + valor2.doubleValue();
 			out.println("o resultado de " + valor1 + " &#43; " + valor2 + " = " + resultado);
 		} else if("subtracao".equals(operacao)) {
 			resultado = valor1 - valor2.doubleValue();
 			out.println("o resultado de " + valor1 + " &#45; " + valor2 + " = " + resultado);
 		} else if("divisao".equals(operacao)) {
 			resultado = valor1 / valor2.doubleValue();
 			out.println("o resultado de " + valor1 + " &#247; " + valor2 + " = " + resultado);
 		} else if("multiplicacao".equals(operacao)) {
 			resultado = valor1 * valor2.doubleValue();
 			out.println("o resultado de " + valor1 + " &#215; " + valor2 + " = " + resultado);
 		} else {
 			out.println("operação inválida");
 		}
		
	%>
	<br />

</body>
</html>