/**
 * 
 */
package br.com.elaborata.exercicio13.dao.implementacao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import br.com.elaborata.exercicio13.dao.Conexao;
import br.com.elaborata.exercicio13.dao.UsuarioDAO;
import br.com.elaborata.exercicio13.pojo.Usuario;

/**
 * @author Roque Junior
 *
 */
public class UsuarioImplementacaoDAO implements UsuarioDAO {

	Connection con = Conexao.getConexao();
	
	
	@Override
	public void cadastrar(Usuario usuario) throws SQLException {
		
		String sql = "insert into tb_usuario(usuario, senha) values (?, ?)";
		
		PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
		
		pstmt.setString(1, usuario.getUsuario());
		pstmt.setString(2, usuario.getSenha());
		
		pstmt.execute();
		
		
		
		
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
		String sql = "select * from tb_usuario";
		
		PreparedStatement pstmt = (PreparedStatement) con.prepareStatement(sql);
		
		pstmt.execute();
		
		ResultSet resultSet=(ResultSet) pstmt.executeQuery();
		List<Usuario> usuarios = new ArrayList<Usuario>();
		Usuario usuario = null;
		
		
		while (resultSet.next()){
			usuario = new Usuario();
			usuario.setId(resultSet.getInt("id"));
			usuario.setUsuario(resultSet.getString("usuario"));
			usuario.setSenha(resultSet.getString("senha"));
			
			usuarios.add(usuario);                        
			usuario = null;			
			
		}
		
		pstmt.close();
		
		//List<Usuario> res=(List<Usuario>) pstmt.executeQuery();
		//List<Usuario> usuarios = (List<Usuario>) res.;
		//List<Usuario> a = (List<Usuario>) res.getObject(); 
		
		return usuarios;
	}

	@Override
	public Usuario buscar(Usuario usuario) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	

}
