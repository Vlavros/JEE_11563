/**
 * 
 */
package br.com.vlavros.facede;

import java.sql.SQLException;
import java.util.List;

import br.com.elaborata.exercicio13.dao.UsuarioDAO;
import br.com.vlavros.dao.jpa.UsuarioImplementacaoDAO;
import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 *
 */
public class UsuarioFacadeJPA {
	
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
	
	public List<Usuario> listar() throws Exception {
		try {
			return dao.listar();
		} catch (SQLException e) {
			try {
				throw new Exception("Erro de SQL");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			return null;
		}
		
		
	}

}
