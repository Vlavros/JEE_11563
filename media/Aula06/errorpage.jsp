<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" contentType="text/html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Página de Erro</title>
</head>
<body>
	Request que falhou :  ${pageContext.errorData.requestURI}<br/>
	Código de Status: ${pageContext.errorData.statusCode} <br/>
	Exceção: ${pageContext.errorData.throwable} <br/>
	${pageContext.errorData.servletName}
</body>
</html>