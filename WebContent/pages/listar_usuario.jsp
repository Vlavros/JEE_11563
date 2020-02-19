<%@page import="br.com.elaborata.exercicio13.facade.UsuarioFacade"%>
<%@page import="br.com.elaborata.exercicio13.pojo.Usuario"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exercicio 13 - Servlets - Listar Alunos</title>
</head>
<body>
	<table>

	</table>
	<h2>Lista de alunos</h2>
	<%
		UsuarioFacade facade = new UsuarioFacade();
		List<Usuario> usuarios = facade.listar();
	%>
	<table border="2">
		<tr>
			<td width="5%"></td>
			<!-- <td width="15%">Id</td> -->
			<td width="30%">Usuário</td>
			<td width="30%">Senha</td>
			<td width="5%"></td>
			<td width="5%"></td>
		</tr>
		<%
			for (Usuario usuario : usuarios) {
				request.setAttribute("${usuario.getId()}", usuario);
		%>
		<tr>
			<td width="5%"><a
				href="${pageContext.request.contextPath}/CarregaAltUsuario?id=<%=usuario.getId()%>">Alterar</a></td>
			<%-- <td width="15%"><%=usuario.getId()%></td> --%>
			<td width="30%"><%=usuario.getUsuario()%></td>
			<td width="30%"><%=usuario.getSenha()%></td>
			<td width="5%"><a
				href="exibir_usuario.jsp?id=<%=usuario.getId()%>&opc='exibir'">Exibir</a></td>
			<td width="5%"><a
				href="excluir_usuario.jsp?id=<%=usuario.getId()%>&opc='excluir'">Excluir</a></td>
		</tr>
		<%
			}
		%>
	</table>
	<br />
	<br />
	<br />
	<br />
	<br />
	<table>
		<tr>
			<td></td>
			<td><a href="cad_usuario.jsp">Cadastrar Usuario</a></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<a href="javascript:window.history.go(-1)">Voltar</a></td>
		
		</tr>
	</table>
</body>
</html>