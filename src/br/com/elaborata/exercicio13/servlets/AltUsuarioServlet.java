/**
 * 
 */
package br.com.elaborata.exercicio13.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.elaborata.exercicio13.facade.UsuarioFacade;
import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 * @author Roque Junior
 *
 */
public class AltUsuarioServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	static private UsuarioFacade usuarioFacade = new UsuarioFacade();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			Usuario usuario = (Usuario) req.getSession().getAttribute("user");

			usuarioFacade.alterar(usuario);
			
			req.getSession().setAttribute("msg", "Alterado com sucesso");

			resp.sendRedirect(req.getContextPath() + "/pages/alterar_usuario.jsp");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
