package br.com.vlavros.dao.jpa;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.mysql.jdbc.PreparedStatement;

import br.com.elaborata.exercicio13.dao.Conexao;
import br.com.elaborata.exercicio13.dao.UsuarioDAO;
import br.com.elaborata.exercicio13.pojo.Usuario;
import br.com.vlavros.dao.JPAConexaoUtil;


public class UsuarioImplementacaoDAO implements UsuarioDAO {

	//Connection con = Conexao.getConexao();
	EntityManager em = null;
	
	public UsuarioImplementacaoDAO() {
		em = JPAConexaoUtil.criaEM();
	}	
	
	
	@Override
	public void cadastrar(Usuario usuario) throws SQLException {
		

		
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
		Query query = em.createQuery("select u from Usuario u order by usuario asc");
		
		usuarios = query.getResultList();
		
		return usuarios;
		
	}

	@Override
	public Usuario buscar(Usuario usuario) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	

}


