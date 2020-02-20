package br.com.vlavros.bean;

import java.util.Date;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name = "bean")
@SessionScoped
public class ClasseBean {
	private String nome;
	private String mensagem;
	
	public ClasseBean() {
		this.mensagem = new Date().toString();
	}
	
	public String getMensagem() {
		return mensagem;
	}
	
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}


	public String getNome() {
		return nome;
	}
	
	public Object navegar() {
		if("".equals(getNome())) {
			this.setMensagem("O campo nome é obrigatório");
			return "inicio";
		} else {
			this.setMensagem(null);
			return "pagina2";
		}	

	}
	
	public Object voltar() {
		return "inicio";
	}
	


	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
}