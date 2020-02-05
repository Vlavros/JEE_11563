package br.com.tagvlavros;

import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import java.io.*;

public class HelloTag extends SimpleTagSupport {
	//static JspWriter out = getJspContext().getOut();
	
	private String texto;
	
	public HelloTag() {
		texto = "Olá Mundo!";
	}
	
	public static void main(String[] args) {
		
		//out.print("Teste batata!");
		//System.out.println("Batata");
		
		//texto = "batata";
		
	}   
	
	public void doTag() throws JspException, IOException {
      JspWriter out = getJspContext().getOut();
      //out.println("Hello Custom Tag!");
      out.println(texto);
   }
   

}