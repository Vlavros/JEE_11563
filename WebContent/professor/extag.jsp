<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<jsp:include page="cabecalho.jsp"/>
	<jsp:include page="rodape.jsp"/>
	
	<jsp:include page="exrequest.jsp">
		<jsp:param name="nome" value="José" />
		<jsp:param name="sobrenome" value="Santos" />
	</jsp:include>
</body>
</html>