/**
 * 
 */
package br.com.elaborata.exercicio13.dao.implementacao;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.elaborata.exercicio13.dao.JPAConexaoUtil;
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
	public List<Usuario> listar() throws SQLException {
		String hql = "from Usuario order by usuario ASC";
		Query query = em.createQuery(hql);
		return query.getResultList();
	}

	@Override
	public void cadastrar(Usuario usuario) throws SQLException {
		em.getTransaction().begin();
		em.persist(usuario);
		em.getTransaction().commit();
	}

	@Override
	public void alterar(Usuario usuario) throws SQLException {
		em.getTransaction().begin();
		em.merge(usuario);
		em.getTransaction().commit();

	}

	@Override
	public void excluir(Usuario usuario) throws SQLException {
		em.getTransaction().begin();
		em.remove(usuario);
		em.getTransaction().commit();

	}

	@Override
	public Usuario buscar(Usuario usuario) throws SQLException {
		
		return em.find(Usuario.class, usuario.getId());
	}

}