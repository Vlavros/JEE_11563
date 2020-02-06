<%@page import="javax.swing.text.StyledEditorKit.BoldAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="./js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript">

$( function() {
    $("#aceito").click(function() { 
        if ($("input[type=checkbox]").prop( 
          ":checked")) { 
        	$('#confirmar').prop('disabled', true);
        } else { 
        	$('#confirmar').prop('disabled', false);
        } 
    });	
	
});
</script>

<title>Sessions - Aula 05 - 05/02/2020 - 01 - SUBMIT</title>
<style>

</style>


</head>
<body>

<%
	session.setAttribute("nome", request.getParameter("nome"));
	session.setAttribute("email", request.getParameter("email"));
	session.setAttribute("senha", request.getParameter("senha"));
%>

<div style="width:50%;margin:auto;">
	<h3 style="text-align: center">Termo de licença</h3>
	
	<div style="border: 2px; max-height: 400px; width:100%; overflow: auto;">
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam non laoreet justo. Ut in dictum nisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut efficitur iaculis rhoncus. Etiam tincidunt viverra scelerisque. Curabitur rhoncus aliquam leo sit amet posuere. Sed sit amet euismod risus. Suspendisse eu ultrices sem. Mauris eu accumsan libero. Cras in lectus nulla. Ut rhoncus dignissim metus cursus porttitor. Donec id dolor mattis, tincidunt elit sit amet, efficitur mauris.</p>
	
		<p>Suspendisse cursus tortor vel pretium mollis. Aliquam vestibulum ante at semper maximus. Nullam pellentesque arcu vitae tempor blandit. Sed maximus, libero at rutrum fermentum, diam risus volutpat lectus, eleifend eleifend nunc ex sit amet nisl. Phasellus non metus nec sem accumsan condimentum tristique consequat nibh. Aenean semper quam vitae ultricies molestie. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse viverra vel justo sed fermentum.</p>
		
		<p>Cras orci risus, bibendum ut lorem vel, efficitur ultricies nisi. Quisque consequat nisl tincidunt, ullamcorper nunc non, sodales lectus. Pellentesque suscipit eleifend orci. Curabitur ultrices magna nec dignissim consectetur. Donec vitae arcu ante. Nam consectetur vitae mauris vel pellentesque. Nulla ac finibus lectus. Mauris eu imperdiet augue. Quisque quis dapibus mauris. Nunc fermentum lobortis sagittis. Donec augue sapien, sodales vestibulum lorem vel, fringilla pellentesque est.</p>
		
		<p>Suspendisse sapien dolor, tempor at mi sed, ultricies lacinia sapien. Duis vel ultricies nisi, ac condimentum ipsum. Duis fringilla, odio in finibus tempor, ligula neque mollis urna, vitae volutpat est nisi sit amet ipsum. Duis et lobortis mauris. Vestibulum tincidunt interdum blandit. Ut molestie blandit mollis. Duis ipsum eros, laoreet accumsan ipsum vitae, mattis sodales augue. Pellentesque porttitor, lorem ac finibus bibendum, lorem risus fringilla urna, eu lobortis erat justo sit amet elit.</p>
		
		<p>Sed laoreet est et tincidunt vestibulum. Curabitur dictum dui odio, a ultricies purus vulputate nec. Integer ut turpis eu nibh imperdiet consectetur. Morbi ornare diam et sapien consectetur, sed imperdiet ante porta. Cras massa mi, tempor eget aliquam ac, dignissim non dolor. Ut vel iaculis risus, quis ornare sapien. Nunc at maximus diam, at pretium augue. Sed ultricies nec arcu sed molestie. Pellentesque non dolor scelerisque odio convallis rutrum non at odio. Quisque placerat justo congue nibh varius, quis imperdiet justo pulvinar. Curabitur nec blandit orci, in pellentesque elit. Suspendisse vitae eros id tortor eleifend lacinia eget eu libero.</p>
	</div>
	
	<br>
	
	<form action="aula05-02-dados.jsp">
	  <div class="form-check">
	    <input type="checkbox" class="form-check-input" name="aceito" id="aceito">
	    <label class="form-check-label" for="aceito" >Li e aceito</label>
	  </div>	
		
		<br>
		  
	  <button type="submit" class="btn btn-primary" id="confirmar" disabled>Confirmar</button>
	</form>	

</div>

</body>
</html>