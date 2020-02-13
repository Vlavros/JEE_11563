package br.com.vlavros.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MinhaServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
			//super.doGet(request, response);
		response.setContentType("text/html");
		
		String texto = request.getParameter("texto");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>Bem vindo ao Servlet</h1>");
		out.println(request.getContextPath());
		out.println("<br>");
		out.println(texto);
		out.println("</body></html>");
		
	}
	
	@Override
	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException{
			doGet(request, response);
	}	

	
	
}
