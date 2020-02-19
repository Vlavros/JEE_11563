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

import br.com.elaborata.exercicio13.facade.UsuarioFacade;
import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 * @author Roque Junior
 *
 */
public class CarregaAltUsuarioServlet extends HttpServlet {

	static private UsuarioFacade usuarioFacade = new UsuarioFacade();

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");

		Usuario usuario = new Usuario();
		usuario.setId(Integer.valueOf(id));

		try {
			usuario = usuarioFacade.buscar(usuario);
			
			req.getSession().setAttribute("user", usuario);

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
