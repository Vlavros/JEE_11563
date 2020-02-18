<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	if(session.getAttribute("usuario")==null) {
%>
		<jsp:forward page="/login.jsp" />
<%
	}
%>

<br>
	<%-- <c:choose>
		<c:when test="${usuario == null}">
			<jsp:forward page="/login.jsp" />
		</c:when>

		<c:otherwise>
			Contexto Indisponível
		</c:otherwise>
	</c:choose> --%>
	
	<%-- <c:if test= "${usuario == null}">
		<jsp:forward page="/login.jsp" />
	</c:if> --%>
	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manter Usuário</title>
</head>
<body>
	<h1>Página manter usuário</h1>
	<p><a href="${pageContext.request.contextPath}/pages/cad_usuario.jsp">Cadastrar Usuário</a></p>
	<p><a href="${pageContext.request.contextPath}/pages/cad_usuario.jsp">Alterar Usuário</a></p>
	<p><a href="${pageContext.request.contextPath}/pages/cad_usuario.jsp">Excluir Usuário</a></p>
	<p><a href="${pageContext.request.contextPath}/pages/cad_usuario.jsp">Buscar Usuário</a></p>
	
	<p><a href="javascript:window.history.go(-1)">Voltar</a></p>
</body>
</html>