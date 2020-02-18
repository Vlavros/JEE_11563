/**
 * 
 */
package br.com.elaborata.exercicio13.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Roque Junior
 *
 */
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String login = req.getParameter("username") != null ?
				req.getParameter("username") :
				"";

		String senha = req.getParameter("password") != null ?
				req.getParameter("password") : 
				"";
				
		HttpSession sessao = req.getSession();
		
		String proximo = "login.jsp";
		
		if("roque".equals(login) && "123".equals(senha)) {
			sessao.setAttribute("usuario", login);
			proximo = "home.jsp";
		}
		resp.sendRedirect(proximo);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
