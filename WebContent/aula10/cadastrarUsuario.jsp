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
<title>Usuário - Cadastrar</title>
</head>
<body style="width: 50%; margin: auto;">

	<c:set var="usuario" value="${sessionScope.usuario}" />

	<c:choose>

		<c:when test="${usuario == null}">
			<jsp:forward page="./login.jsp"></jsp:forward>
		</c:when>

	</c:choose>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		style="background-color: #e3f2fd;"> <a class="navbar-brand"
		href="#">Cadastro de usuários</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#conteudoNavbarSuportado"
		aria-controls="conteudoNavbarSuportado" aria-expanded="false"
		aria-label="Alterna navegação">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="./home.jsp">Home
					<span class="sr-only">(página atual)</span>
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle active" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Cadastrar </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item active" href="#">Usuário</a> <a
						class="dropdown-item disabled" href="#">Empregado</a> <a
						class="dropdown-item disabled" href="#">Empresa</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="../Logout">Logout
					<span class="sr-only">(sair)</span>
			</a></li>
		</ul>
	</div>
	</nav>

	<h4>Formulário de Cadastro: Usuários</h4>

	<form action="#" method="post">
		<div class="form-group">
			<label for="nome">Nome Completo</label> <input type="text"
				class="form-control" name="nome">
		</div>
		<div class="form-group">
			<label for="nome">Data de Nasciemento</label> <input type="date"
				class="form-control" name="data">
		</div>	
		<div class="form-group">
			<label for="nome">Login</label> <input type="text"
				class="form-control" name="login">
		</div>
		<div class="form-group">
			<label for="senha">Senha</label> <input type="password"
				class="form-control" name="senha">
		</div>
		<button type="submit" class="btn btn-primary">Enviar</button>
	</form>



</body>
</html>