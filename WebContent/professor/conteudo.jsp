<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercicio 5, inserindo cabeçalho e rodapé</title>
</head>
<body>
	<%@ include file="cabecalho.jsp"  %>

	<table width="1024" height="400" bgcolor="eeeeee">
		<tr>
			<td width="50%">
				Conteúdo da página:
			</td>
		</tr>

		<tr>
			<td width="50%">
				Exercicio_05_diretivas_conteudo.jsp
			</td>
		</tr>

	</table>
	
	<%@ include file="rodape.jsp"  %>
</body>
</html>