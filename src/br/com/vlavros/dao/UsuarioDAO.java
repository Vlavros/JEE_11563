package br.com.vlavros.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.vlavros.dto.UsuarioDTO;
import br.com.vlavros.model.Usuario;

public class UsuarioDAO {
	
	public Boolean cadastrarUsuario(Integer id, String nome, String login, String senha, Date dtNascimento) {
		return true;
	}
	
	public Boolean alterarUsuario(Usuario pUsuario) {
		return true;
	}
	
	public Boolean excluirUsuario(Integer id) {
		return true;
	}	
	
	public List<Usuario> listarUsuario() {
		List<Usuario> tUsuario = new ArrayList<>();
		
		return tUsuario;
	}	
	
	public Usuario buscarUsuario() {
		Usuario tUsuario = new Usuario();
		
		return tUsuario;
	}
	
}
