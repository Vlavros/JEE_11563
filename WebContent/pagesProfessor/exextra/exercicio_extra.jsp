<%@page errorPage="errorpage_extra.jsp" contentType="text/html;"%>
<html>
<body>
	<form method="post">
		Nome: <input type="text" name="nome"><br /> 
		Idade: <input type="text" name="idade"><br />
		<input type="submit" value="Enviar">
		<%
			
			String nome = request.getParameter("nome");
			String id = request.getParameter("idade");
			Integer idade = id==null || id=="" ? -1 : Integer.valueOf(request.getParameter("idade"));
			if( id==""){
				out.print("Você precisa preencher o campo idade!!!");
			} else if(idade>=26){
		%>
				<jsp:forward page="sucesso_extra.jsp"/>
		<%
			} else if(idade>0 && idade<26) {
				String s = null;
				s.trim();
			}
			
		%>
		
	</form>
</body>
</html>