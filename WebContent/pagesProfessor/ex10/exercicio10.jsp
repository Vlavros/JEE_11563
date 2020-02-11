<%@page errorPage="errorpage_10.jsp" contentType="text/html;"%>
<html>
<body>
	<form method="post">
		Numero1: <input type="text" name="num1"><br /> 
		Numero2: <input type="text" name="num2"><br />
		<input type="submit" value="somar">
		<%
			Integer valor1 = 0;
			Integer valor2 = 0;
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			valor1 = (num1 != null) ? Integer.valueOf(num1) : 0;
			valor2 = (num2 != null) ? Integer.valueOf(num2) : 0;
			Integer soma = valor1 + valor2;
		%>
		<br/> <br/> <br/> <br/> <br/>
		<%
			out.println("A soma de " + valor1 + " + " + valor2 + " = " + soma);
		%>
	</form>
</body>
</html>