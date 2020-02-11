package tag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class CotacaoMoeda extends SimpleTagSupport {

	private Double cotacao;
	private Double valor;
	private String moedaOrigem;
	private String moedaDestino;
	private StringWriter sw = new StringWriter();
	
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		if(cotacao != null && valor != null && moedaDestino.equals("Dolar")) {
			out.println(" O valor de " +this.valor + " " + this.moedaOrigem +  " em " + this.moedaDestino  + " é " + (this.cotacao*this.valor));
		} else {
			getJspBody().invoke(sw);
			out.println(sw.toString());
		}
	}

	public Double getCotacao() {
		return cotacao;
	}

	public void setCotacao(Double cotacao) {
		this.cotacao = cotacao;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public String getMoedaOrigem() {
		return moedaOrigem;
	}

	public void setMoedaOrigem(String moeda) {
		this.moedaOrigem = moeda;
	}
	
	public String getMoedaDestino() {
		return moedaDestino;
	}

	public void setMoedaDestino(String moeda) {
		this.moedaDestino = moeda;
	}	
	
}
