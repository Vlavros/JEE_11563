package br.com.tagvlavros;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class OperacaoMatematica extends SimpleTagSupport {
	
	private Double primeiroValor;
	private Double segundoValor;
	private String tipoOperacao;
	
	public void doTag() throws JspException, IOException {
	      
		JspWriter out = getJspContext().getOut();
		
		if(tipoOperacao.equals("SOMAR")) {
			out.println(primeiroValor + " + " + segundoValor + " = " + Double.valueOf(primeiroValor)+Double.valueOf(segundoValor));
		} else {
			out.println("Operação inválida!");
		}
		
	    //out.println("Hello Custom Tag!");
	    
	   }
	
	
	public Double getPrimeiroValor() {
		return primeiroValor;
	}
	public void setPrimeiroValor(Double primeiroValor) {
		this.primeiroValor = primeiroValor;
	}	
	
	/*public void setPrimeiroValor(String primeiroValor) {
		this.primeiroValor = Double.valueOf(primeiroValor);
	}*/	
	
	public Double getSegundoValor() {
		return segundoValor;
	}
	public void setSegundoValor(Double segundoValor) {
		this.segundoValor = segundoValor;
	}
	
	/*
	public void setSegundoValor(String segundoValor) {
		this.segundoValor = Double.valueOf(segundoValor);
	}*/
		
	
	public String getTipoOperacao() {
		return tipoOperacao;
	}
	public void setTipoOperacao(String tipoOperacao) {
		this.tipoOperacao = tipoOperacao.toUpperCase();
	}
	
	

}
