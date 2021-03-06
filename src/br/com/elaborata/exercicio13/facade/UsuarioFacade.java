/**
 * 
 */
package br.com.elaborata.exercicio13.facade;

import java.sql.SQLException;
import java.util.List;

import br.com.elaborata.exercicio13.dao.UsuarioDAO;
import br.com.elaborata.exercicio13.dao.implementacao.UsuarioImplementacaoDAO;
import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 * @author Roque Junior
 *
 */
public class UsuarioFacade {

	UsuarioDAO dao = new UsuarioImplementacaoDAO();

	public void cadastrar(Usuario usuario) throws Exception {
		try {
			dao.cadastrar(usuario);
		} catch (SQLException e) {
			try {
				throw new Exception("Erro de SQL");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

	}

	public void alterar(Usuario usuario) throws Exception {
		try {
			dao.alterar(usuario);
		} catch (SQLException e) {
			try {
				throw new Exception("Erro de SQL");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}

	}

	public Usuario buscar(Usuario usuario) throws Exception {

		return dao.buscar(usuario);

	}

	public List<Usuario> listar() {

		try {
			return dao.listar();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}
