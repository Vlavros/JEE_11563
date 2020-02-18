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
public class CadUsuarioServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	static private UsuarioFacade usuarioFacade = new UsuarioFacade();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String login = req.getParameter("username") != null ? req.getParameter("username") : "";

			String senha = req.getParameter("password") != null ? req.getParameter("password") : "";
			Usuario usuario = new Usuario();
			usuario.setUsuario(login);
			usuario.setSenha(senha);

			usuarioFacade.cadastrar(usuario);
			req.setAttribute("msg", "Cadastrado com sucesso");
			
			resp.sendRedirect(req.getContextPath()+"/pages/cad_usuario.jsp");
			
			
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
