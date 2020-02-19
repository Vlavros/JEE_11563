<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Exercicio 13 - Servlets - Alterar Usuários</title>
</head>

<%
	if(session.getAttribute("usuario")==null) {
%>
		<jsp:forward page="/login.jsp" />
<%
	}
%>
<body>
<c:out value="${msg}"></c:out>
<table>
		<tr>
			<td></td>
			<td>
				<a href="javascript:window.history.go(-1)">Voltar</a></td>
		
		</tr>
	</table>
	<table align="center" width="480" height=100 bgcolor="aabbaa">
		<tr>
			<td width="8%" align="left">
				<form method="post" action="${pageContext.request.contextPath}/AltUsuario">
					<tr>
						<h2>
							<td>Usuario:</td>
							<td><input type="text" name="username" value="${user.usuario}" size="30"></td>
						</h2>
						<p></p>
					</tr>
					<tr>
						<h2>
							<td>Senha:</td>
							<td><input type="text" name="password" value="${user.senha}" size="30"></td>
						</h2>
						<p></p>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Alterar">
						</td>
					</tr>
				</form>
			</td>
		</tr>
	</table>
	
</body>
</html>