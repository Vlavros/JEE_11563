<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "moeda" uri = "WEB-INF/aula08-03.tld"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercício - Aula 08 - 03</title>
</head>
<body>
	<p>Crie duas TagLibs para efetuar conversões entre Real e Dollar. A tag deve receber 2 parâmetros, "cotacao" e "valor", e caso aconteça algum erro deverá ser exibida uma mensagem configurad atrávés do conteúdo da tag.</p>
	
	<moeda:Cotacao cotacao="0.23" valor="100" moedaDestino="Dolar" moedaOrigem="Real" >
		Não foi possível converter.
	</moeda:Cotacao> 


</body>
</html>