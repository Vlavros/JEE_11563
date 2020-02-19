<html>
<head>
<title>Exercicio 13 - Servlets</title>
</head>
<body>
	<table align="center" width="480" height=100 bgcolor="bbffee">
		<tr>
			<td width="8%" align="left">
				<form method="post" action="${pageContext.request.contextPath}/Login">
					<tr>
						<h2>
							<td>Usuario:</td>
							<td><input type="text" name="username" size="30"></td>
						</h2>
						<p></p>
					</tr>
					<tr>
						<h2>
							<td>Senha:</td>
							<td><input type="password" name="password" size="30"></td>
						</h2>
						<p></p>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Login">
						</td>
					</tr>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>