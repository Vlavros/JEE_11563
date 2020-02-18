/**
 * 
 */
package br.com.elaborata.exercicio13.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 * @author Roque Junior
 *
 */
public interface UsuarioDAO {
	
	public void cadastrar(Usuario usuario) throws SQLException;
	public void alterar(Usuario usuario) throws SQLException;
	public void excluir(Usuario usuario) throws SQLException;
	public List<Usuario> listar() throws SQLException;
	public Usuario buscar(Usuario usuario) throws SQLException;

}
