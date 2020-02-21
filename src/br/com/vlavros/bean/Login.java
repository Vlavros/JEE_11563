package br.com.vlavros.bean;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name = "login")
//@SessionScoped
public class Login {
	private String nome;
	private String senha;
	private String mensagem;
	
	public Object logar() {
		if("Vladimir".equals(this.getNome()) && "senha".equals(this.getSenha())) {
			return "portal";
		} else {
			this.setMensagem("Login ou senha incorretos");
			return "login";
		}
	}
	
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
}
