<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<script type="text/javascript" src="./js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sessions - Aula 05 - 05/02/2020 - 02 - SUBMIT</title>
<style>

</style>


</head>
<body>

<div style="width:50%;margin:auto;">
	<h3 style="text-align: center">Cadastro de novo usuário</h3>
	<form action="aula05-02-aceitar.jsp" method="post">
	  <div class="form-group">
	    <label for="nome">Nome</label>
	    <input type="nome" class="form-control" name="nome">
	  </div>
	  <div class="form-group">
	    <label for="email">Email</label>
	    <input type="email" class="form-control" name="email">
	  </div>
	  <div class="form-group">
	    <label for="senha">Senha</label>
	    <input type="password" class="form-control" id="senha">
	  </div>
	  <button type="submit" class="btn btn-primary">Enviar</button>
	</form>
</div>

</body>
</html>