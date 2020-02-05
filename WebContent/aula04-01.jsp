<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>

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

<title>Aula 04 - 04/02/2020 - 01</title>

<style>
footer {
    position: absolute;
    bottom: 0;
}
</style>

</head>
<body>
	
	<%!
		Date data = new Date();
	
		//out.print("teste");
	
		Date getData() {
			return data;
		}
		
		
	%>
	
	<nav>
		<!-- %@include file="aula04-01-cabecalho.jsp" %-->
		<jsp:include page="aula04-01-cabecalho.jsp">
			<jsp:param value="aaaa" name="teste"/>
			<jsp:param value="01" name="menu"/>
		</jsp:include>
	</nav>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pellentesque vitae ipsum posuere malesuada. Donec scelerisque lacinia dui, sed auctor mauris molestie a. Donec ornare, dui ullamcorper convallis fringilla, ex ligula cursus mauris, at molestie nisl odio id dolor. Praesent mattis, turpis vel imperdiet aliquam, diam diam faucibus nisi, in porttitor lectus dolor vel dolor. Fusce a odio ac est semper mattis. Suspendisse eleifend varius metus eget fermentum. Sed vitae porta neque. Aliquam sollicitudin arcu quis lacus commodo, quis aliquam lacus congue. Sed hendrerit, diam at gravida tristique, justo odio hendrerit velit, eget sodales diam dolor viverra libero. Donec sit amet interdum urna, eu finibus risus. Pellentesque luctus ex eget nulla vehicula eleifend. Curabitur quis est lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
	
	<p><%=getData() %></p>
	
	 <footer>
		<%@include file="aula04-01-rodape.jsp" %>
	 </footer>

	

</body>
</html>