<%@ page isErrorPage="true" contentType="text/html"%>
<html>
<body>
	Request que falhou : ${pageContext.errorData.requestURI}
	<br /> C�digo de Status: ${pageContext.errorData.statusCode}
	<br /> Exce��o: ${pageContext.errorData.throwable}
	<br /> ${pageContext.errorData.servletName}
</body>
</html>