<%@ page isErrorPage="true" contentType="text/html"%>
<html>
<body>
	Request que falhou : ${pageContext.errorData.requestURI}
	<br /><br /> A Exce��o Gerada: ${pageContext.errorData.throwable}
	<br /><br /> 
</body>
</html>