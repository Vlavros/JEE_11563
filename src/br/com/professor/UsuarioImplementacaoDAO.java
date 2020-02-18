/**
 * 
 */
package br.com.professor;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.vlavros.dao.JPAConexaoUtil;
import br.com.elaborata.exercicio13.dao.UsuarioDAO;
import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 * @author Roque Junior
 *
 */
public class UsuarioImplementacaoDAO implements UsuarioDAO {

	private EntityManager em;

	public UsuarioImplementacaoDAO() {
		em = JPAConexaoUtil.criaEM();
	}

	@Override
	public void cadastrar(Usuario usuario) throws SQLException {

		/*String sql = "insert into tb_usuario(usuario, senha) values (?, ?)";

		PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);

		pstmt.setString(1, usuario.getUsuario());
		pstmt.setString(2, usuario.getSenha());

		pstmt.execute();*/

	}

	@Override
	public void alterar(Usuario usuario) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void excluir(Usuario usuario) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Usuario> listar() throws SQLException {
		
		return em.
				createQuery("from Usuario order by usuario ASC")
				.getResultList();
	}

	@Override
	public Usuario buscar(Usuario usuario) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
