<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplo de UseBean</title>
</head>


<body>

	<form method="post" action="save_name.jsp">
		
		<h2>
			<p>nome: <input type="text" name="username" size="20"></p>
		</h2>
		
		<h2>
			<p>email: <input type="text" name="email" size="20"></p>
		</h2>
		
		<h2>
			<p>idade: <input type="text" name="idade" size="4"></p>
		</h2>
		
			<input type="submit" value="Enviar">
	</form>

</body>


</html>