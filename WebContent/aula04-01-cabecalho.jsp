<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript">

$( function() {
	//alert("aaa");
	
});
</script>

<title>Aula 04 - 04/02/2020 - 01 Cabeçalho</title>

<style>

</style>

</head>
<body>
	<%
		String nome = request.getParameter("teste");
		String menu = request.getParameter("menu");
	
	%>

	<h1>Cabeçalho</h1>
	<%=nome%> <%=menu%>

	

</body>
</html>