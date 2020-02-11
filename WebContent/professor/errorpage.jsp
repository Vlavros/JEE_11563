<%@ page isErrorPage="true" contentType="text/html"%>
<html>
<body>
	Request que falhou : ${pageContext.errorData.requestURI}
	<br /> Código de Status: ${pageContext.errorData.statusCode}
	<br /> Exceção: ${pageContext.errorData.throwable}
	<br /> ${pageContext.errorData.servletName}
</body>
</html>