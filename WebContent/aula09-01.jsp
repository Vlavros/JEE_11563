<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplos de TAGLIBS-JSTL</title>
</head>
<body>

<h1>Exemplos Tag Core</h1>
<h4>Exibir contexto Path</h4>
<c:set var="context" scope="request" value="${pageContext.request.contextPath}" />
<c:out value="${context}" /> = <c:out value="${pageContext.request.contextPath}" />

<c:remove var="context"  />
<c:out value="${context}" />

<br> <br>

<c:set var="banana" value="teste" />
<c:out value="${banana}" />

<br>

<%-- <c:remove var="banana"  /> --%>

<c:set var="banana2" value="testea" />

<h4>Exemplo "IF"</h4>

<c:choose>
	<c:when test="${banana == null }">
		Contexto indisponível...
	</c:when>

	<c:when test="${banana == banana2 }">
		Contexto banana...
	</c:when>
	
	<c:otherwise>
		Contexto disponível...
	</c:otherwise>
</c:choose>

<br>

<c:set var="mensagem" value="Mensagem de testE" />
<c:if test="${fn:containsIgnoreCase(mensagem,'teste')}" >
	<p>a palavra teste foi encontrada</p>
</c:if>

<br>

<h4>Exemplo "FOR"</h4>


<%
	String[] letras = {"A","B","C","D","E","F","G"};
	request.setAttribute("lista", letras);
	//request.getAt
%>

<table border="1">
<c:forEach var="item" items="${lista}" >
	<tr>
		<td><c:out value="${item}" /></td>
	</tr>
</c:forEach>
</table>

<h1>Exemplos Tag XML</h1>
<c:set var="xmltext">
	<usuarios>
		<usuario>
			<nome>João</nome>
			<senha>jo1234</senha>
		</usuario>
		<usuario>
			<nome>Maria</nome>
			<senha>12345</senha>
		</usuario>		
	</usuarios>
</c:set> 

<x:parse xml="${xmltext}" var="output" />

<ul>
	<x:forEach select="$output/usuarios/usuario" var="item">
		<li>Nome: <x:out select="$item/nome"/></li>
		<li>Senha: <x:out select="$item/senha"/></li> 
	</x:forEach>
</ul>

<br> <br> 

<c:import url="http://localhost:8080/Projeto1/etc/teste.xml" var="pessoas"></c:import> 
<x:parse xml="${pessoas}" var="pessoasXml" />
<x:out select="$pessoasXml/pessoas/pessoa[2]/nome" />

<h1>Exemplo Replace</h1>
<c:set var="string1" value="Essa é a primeira String."></c:set>
<c:set var="string2" value="${fn:replace(string1,'primeira','segunda') }"></c:set>

${string1}
<br>
${string2}

</body>
</html>