<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aula 03 - 03/02/2020 - 04</title>
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

<p class="tab">1) Crie uma JSP que gere um número aleatório, exiba e diga em seguida se o número gerado é par ou impar.</p>

<%
	Integer num = (int)(Math.random()*100);
	out.print("O número aleatório é: " + num);
	out.print(" - ");
	out.print("Esse número é " + (num%2==0?"PAR":"IMPAR") + ".");
	out.print("<br>");
%>

<p class="tab">2) Modifique o JSP para que quando o número gerado for par seja apresentado em azul e quando impar seja apresentado em vermelho.</p>

<span class="<%=(num%2==0?"azul":"vermelho")%>"><%=num%></span>

<p class="tab">3) Crie uma JSP que leia 3 parâmetros (2 números e uma operação) e mostre na página o resultado do cálculo</p>

<%
	String operacao;
	Double n1,n2,resultado;

	try {
		operacao = request.getParameter("operacao").toUpperCase();
		n1 = Double.valueOf(request.getParameter("n1"));
		n2 = Double.valueOf(request.getParameter("n2"));
		
		if(operacao.equals("SOMA")){
			resultado = n1 + n2;
		} else if(operacao.equals("SUBTRACAO")) {
			resultado = n1 - n2;
		} else if(operacao.equals("DIVISAO")) {
			resultado = n1 / n2;
		} else if(operacao.equals("MULTIPLICACAO")) {
			resultado = n1 * n2;
		} else {
			resultado = null;
		}
		
		out.print("A " + operacao + " de " + n1 + " com " + n2 + " é " + resultado);
		
	} catch(Exception e) {
		out.print("<span class='vermelho'>Informe os parâmetros OPERACAO, N1 e N2</span>");
	}

%>	

	

</body>
</html>