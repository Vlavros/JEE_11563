<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercicio 8 Java WEB - Dados do Usuário Cadastrado</title>
</head>
<body>
	<table align="center" width="1024" height=100 bgcolor="CAE1FF">
		<td width="15%" align="justify">
		<tr height="15"></tr>
		<tr height="15"></tr>
		<tr height="15"></tr>
		<tr>
			<td align="left">Nome:</td>
			<td align="left"><%=session.getAttribute("nome") %>
			</td>
		</tr>
		<tr>
			<td align="left">Endereço:</td>
			<td align="left"><%=session.getAttribute("endereco") %>
			</td>
		</tr>
		<tr>
			<td align="left">CEP:</td>
			<td align="left"><%=session.getAttribute("cep") %>
			</td>
		</tr>
		<tr>
			<td align="left">Cidade:</td>
			<td align="left"><%=session.getAttribute("cidade") %>
			</td>
		</tr>
		<tr>
			<td align="left">Telefone:</td>
			<td align="left"><%=session.getAttribute("telefone") %>
			</td>
		</tr>
		<tr>
			<td align="left">Data Nascimento:</td>
			<td align="left"><%=session.getAttribute("dtNasc") %>
			</td>
		</tr>
		<tr height="15"></tr>
		<tr height="15"></tr>
		<tr align="center">
			<a href="javascript:window.history.go(-1)">Voltar</a>
		</tr>
		</td>
	</table>
</body>
</html>