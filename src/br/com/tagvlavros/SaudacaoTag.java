package br.com.tagvlavros;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;


public class SaudacaoTag extends SimpleTagSupport {
	
	//protected StringWriter  
	
	//se não existir o @Override, o nime deve ser sempre doTag
	//devido ao extends da classe SimpleTagSuppport
	@Override
	public void doTag() throws JspException, IOException {
		
		JspWriter out = getJspContext().getOut();
		out.print("<h1>Bom Dia</h1>");
		
	}
	
}
