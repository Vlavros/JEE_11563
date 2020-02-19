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
public class UsuarioImplementacaoDAO_JDBC implements UsuarioDAO {

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
		List<Usuario> usuarios = new ArrayList<Usuario>();
		try {
			// 1. consultar dados
			PreparedStatement pst = (PreparedStatement) con
					.prepareStatement(
							"SELECT id, usuario, senha FROM tb_usuario");

			// 2.Executar consulta
			pst.execute();
			// 3. processar resultado
			ResultSet rs = pst.getResultSet();

			// Outra forma de execução de consulta:
			// ResultSet rs = pst.executeQuery();

			// iterando o resultado
			while (rs.next()) {
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setSenha(rs.getString("senha"));

				// Adicionando usuario à lista
				usuarios.add(usuario);
			}

			// 4. fechar tudo
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
			//throw new Exception("Erro ao listar usuario.");
		}

		return usuarios;
	}

	@Override
	public Usuario buscar(Usuario usuario) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	

}
