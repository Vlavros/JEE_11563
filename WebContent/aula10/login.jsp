<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<title>Login</title>
</head>
<body style="width: 50%; margin: auto;">

	<c:choose>

		<c:when test="${usuario != null}">
			<jsp:forward page="./home.jsp"></jsp:forward>
		</c:when>

	</c:choose>

	<h1 style="text-align: center">Login</h1>
	<h4 style="text-align: center">Entre com suas informações</h4>

	<form action="./../Login" method="post">
		<div class="form-group">
			<label for="nome">Login</label> <input type="text"
				class="form-control" name="login">
		</div>
		<div class="form-group">
			<label for="senha">Senha</label> <input type="password"
				class="form-control" name="senha">
		</div>
		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form>


</body>
</html>