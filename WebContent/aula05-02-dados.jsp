<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sessions - Aula 05 - 05/02/2020 - 01 - SUBMIT</title>
<style>

</style>


</head>
<body>

Olá, seu nome é <%=session.getAttribute("nome") %>, seu email é <%=session.getAttribute("email")%>.


</body>
</html>