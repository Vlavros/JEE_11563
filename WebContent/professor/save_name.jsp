<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="usuario" class="beans.DadosUsuario" scope="session"/>
<jsp:setProperty property="*" name="usuario"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Populando o objeto Usuario</title>
</head>
<body>

	<a href="next_page.jsp">Continuar</a>

</body>
</html>