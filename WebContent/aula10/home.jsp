<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<title>Home - Bem vindo</title>
</head>
<body style="width: 50%; margin: auto;">

	<%
		/*String usuario = null;
			
		
			try {
				usuario = session.getAttribute("usuario").toString();
				
				if(usuario == null) {
					response.sendRedirect("./login.jsp");
				}
				
			} catch(Exception e) {
				response.sendRedirect("./login.jsp");
			}
		*/
	%>

	<c:set var="usuario" value="${sessionScope.usuario}" />

	<c:choose>

		<c:when test="${usuario == null}">
			<jsp:forward page="./login.jsp"></jsp:forward>
		</c:when>

	</c:choose>
	
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background-color: #e3f2fd;">
  <a class="navbar-brand" href="#">Bem vindo, <c:out value="${sessionScope.usuario}" /></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="conteudoNavbarSuportado">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(página atual)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Usuário
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="./cadastrarUsuario.jsp">Usuário</a>
          <!-- a class="dropdown-item" href="${pageContext.request.contextPath}/pages/cad_usuario.jsp">Cadastrar Usuário</a-->
          <a class="dropdown-item" href="${pageContext.request.contextPath}/ListaUsuario">Listar Usuários</a>
          
          <!-- a class="dropdown-item disabled" href="#">Empregado</a-->
          <!-- a class="dropdown-item disabled" href="#">Empresa</a-->
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="../Logout">Logout <span class="sr-only">(sair)</span></a>
      </li>      
      </ul>
  </div>
</nav>	

	<h4>Página inicial</h4>
	
	<p>Lorem ipsum eget hendrerit odio vestibulum ligula pulvinar, sociosqu torquent habitasse hendrerit eu nisi facilisis dictum, etiam euismod pulvinar dui primis aliquam. neque velit ligula proin aenean pharetra, purus senectus dolor. lorem posuere duis mollis augue vel sem ultricies integer vestibulum conubia posuere, pulvinar rhoncus cras cubilia arcu gravida tincidunt mattis vestibulum sagittis. est orci nunc tristique himenaeos nisi pretium dapibus duis ac vel, tincidunt tempus lacinia elit taciti rutrum per facilisis nisi, malesuada sit ante molestie etiam ut nam libero lacus. et sociosqu elementum hac dictum urna scelerisque convallis, lectus velit sagittis urna auctor rhoncus consequat tincidunt, in phasellus blandit cursus tempor nam. </p>
	
	<p>Donec integer phasellus nam lacus taciti tincidunt dui habitant, leo laoreet dictumst sit tortor ipsum dui arcu duis, cursus feugiat varius tincidunt donec tempor pellentesque. quisque porta morbi feugiat eu primis litora, mi litora quis senectus bibendum lorem, non blandit urna cubilia praesent. habitant vulputate varius hendrerit tortor sem egestas diam rhoncus, maecenas aliquam lobortis vel tristique eu semper lectus et, pulvinar metus rutrum inceptos consequat erat vestibulum. ultricies mi taciti blandit et justo mauris urna semper tellus elit, lacinia tellus primis et vel nec tempus purus placerat, ante mauris etiam congue ac neque tellus augue varius. </p>



</body>
</html>