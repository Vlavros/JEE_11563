/**
 * 
 */
package br.com.vlavros.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.vlavros.facede.UsuarioFacadeJPA;
	   
import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 *
 */
public class CadUsuarioServletJPA extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	static private UsuarioFacadeJPA usuarioFacade = new UsuarioFacadeJPA();

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
			
			//resp.sendRedirect(req.getContextPath()+"/pages/cad_usuario.jsp");
			resp.sendRedirect(req.getContextPath()+"./cadastrarUsuario.jsp");
			
			
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
