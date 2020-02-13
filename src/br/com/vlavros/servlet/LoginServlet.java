package br.com.vlavros.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

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
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String logout = request.getParameter("logout");
		
		String redir = "./aula10/home.jsp";
		
		HttpSession session = request.getSession(false);
		
		if(login == null || login.trim().isEmpty() || senha == null || senha.trim().isEmpty() || logout != null) {
			redir = "./aula10/login.jsp";
			session.invalidate();
		} else {
			session.setAttribute("usuario",login);
		}
		
		/*
		response.setContentType("text/html"); 
		PrintWriter out = response.getWriter();
		out.println(login);
		out.println(senha);
		out.println(redir);
		*/
		
		response.sendRedirect(redir);		
		
	}		
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{	
				
		doPost(request, response);

	}
	


	
	
}
