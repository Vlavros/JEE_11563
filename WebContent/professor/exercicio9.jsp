<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercicio 9 Java WEB - Cadastro de Usuário</title>
</head>
<body>
	<table align="center" width="1024" height=100 bgcolor="CAE1FF">
		<tr>
			<td width="15%" align="justify">
				<form method="post" action="termo_9.jsp">
					<tr height="15"></tr>
					<tr height="15"></tr>
					<tr height="15"></tr>
					<tr>
						<td align="left">Nome:</td>
						<td align="left"><input type="text" name="nome" size="90">
						</td>
					</tr>
					<tr>
						<td align="left">Endereço:</td>
						<td align="left"><input type="text" name="endereco" size="90">
						</td>
					</tr>
					<tr>
						<td align="left">CEP:</td>
						<td align="left"><input type="text" name="cep" size="90">
						</td>
					</tr>
					<tr>
						<td align="left">Cidade:</td>
						<td align="left"><input type="text" name="cidade" size="90">
						</td>
					</tr>
					<tr>
						<td align="left">Telefone:</td>
						<td align="left"><input type="text" name="telefone" size="90">
						</td>
					</tr>
					<tr>
						<td align="left">Data Nascimento:</td>
						<td align="left"><input type="text" name="dtNasc" size="90">
						</td>
					</tr>
					<tr height="15"></tr>
					<tr height="15"></tr>
					<tr height="15"></tr>
					<tr>
						<td align="left"/>
						<td align="center"><input type="submit" value="Enviar">
						</td>
					</tr>
							 
				</form>
			</td>
		</tr>
	</table>
</body>
</html>