/**
 * 
 */
package br.com.vlavros.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.elaborata.exercicio13.facade.UsuarioFacade;
import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 *
 */
public class ListaUsuarioServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	static private UsuarioFacade usuarioFacade = new UsuarioFacade();
	
	public static void main(String[] args) throws Exception {
		
		/*
		List<Usuario> usuarios = usuarioFacade.listar();
		
		for(Usuario usuario : usuarios) {
			System.out.println(usuario.getId());
			System.out.println(usuario.getUsuario());
			System.out.println(usuario.getSenha());
		}
		 */
		
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Usuario> usuarios = null;
		HttpSession session = req.getSession(true); 
		session.setAttribute("usuarios",usuarios);
		
		session.setAttribute("usuarios", usuarios);
		try {
			usuarios = usuarioFacade.listar();
			
			
			session.setAttribute("usuarios", usuarios);
			resp.sendRedirect(req.getContextPath()+"/aula10/listarUsuarios.jsp");
			
			
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
