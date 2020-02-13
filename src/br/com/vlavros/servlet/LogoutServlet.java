package br.com.vlavros.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

	/**
	 * Aula 10
	 * Crie uma JSP chamada "home.jsp", faça com que esta verifique se existe um atributo chamado "usuário" na sessão.
	 * Caso não exista, redirecione a requisição para uma página chamada "login.jsp", na qual conterá um formulário
	 * com campos de usuário e senha. As informações deverão ser enviadas a "LoginServlet" que efetuará o login do usuário 
	 * e o redirecionará para a "home.jsp"
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
		//doGet(request, response);
		
		HttpSession session = request.getSession(false);
		session.invalidate();
		
		response.sendRedirect("./aula10/login.jsp");		
		
	}		
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{	
				
		doPost(request, response);

	}
	


	
	
}
