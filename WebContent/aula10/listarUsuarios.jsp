<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="br.com.elaborata.exercicio13.pojo.Usuario" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<title>Usuário - Listar</title>
</head>
<body style="width: 50%; margin: auto;">

	<c:set var="usuario" value="${sessionScope.usuario}" />

	<c:choose>

		<c:when test="${usuario == null}">
			<jsp:forward page="./login.jsp"></jsp:forward>
		</c:when>

	</c:choose>

	<h1>Lista de usuários</h1>
	
	<%
		List<Usuario> usuarios = (List<Usuario>)session.getAttribute("usuarios");
	
	%>



</body>
</html>