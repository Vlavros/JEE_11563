<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="usuario" class="beans.DadosUsuario" scope="session"></jsp:useBean>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mostrando os dados do Usuario</title>
</head>
<body>
		<h1>
			<p>Você Informou:</p>
		</h1>
		<h2>
			<p>nome: <%=usuario.getUsername()%></p>
		</h2>
		
		<h2>
			<p>email: <%=usuario.getEmail()%></p>
		</h2>
		
		<h2>
			<p>idade: <%=usuario.getIdade()%></p>
		</h2>


</body>
</html>