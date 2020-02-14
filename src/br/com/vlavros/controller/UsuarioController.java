package br.com.vlavros.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.vlavros.dao.UsuarioDAO;
import br.com.vlavros.dto.UsuarioDTO;
import br.com.vlavros.model.Usuario;

public class UsuarioController {

	public UsuarioDTO cadastrarUsuario(Integer id, String nome, String login, String senha, Date dtNascimento) {
		return new UsuarioDTO(true, "Usuário inserido com sucesso.");
	}
	
	public UsuarioDTO alterarUsuario(Usuario pUsuario) {
		return new UsuarioDTO(true, "Usuário alterado com sucesso.");
	}
	
	public UsuarioDTO excluirUsuario(Integer id) {
		return new UsuarioDTO(true, "Usuário excluído com sucesso.");
	}	
	
	public UsuarioDTO listarUsuario() {
		List<Usuario> tUsuario = new ArrayList<>();
		
		return new UsuarioDTO(true, "Usuário recuperado com sucesso.",tUsuario);
	}	
	
	public UsuarioDTO buscarUsuario() {
		Usuario tUsuario = new Usuario();
		
		return new UsuarioDTO(true, "Busca realizada com sucesso.",tUsuario);
	}
	
	
	
}
