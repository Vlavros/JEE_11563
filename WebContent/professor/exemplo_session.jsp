<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplo de Manipulação de sessão</title>
</head>


<body>
	<table width="1024" height=100 bgcolor="bbffee">
		<tr>
			<td width="100%" align="center">
				<form method="post" action="mostrar_nome.jsp">
					<h2>Qual o seu nome? <input type="text" name="username" size="30">
					</h2>
					<p>
						<input type="submit" value="Enviar">
				</form>
			</td>
		</tr>
	</table>
</body>


</html>