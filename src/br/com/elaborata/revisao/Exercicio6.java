/**
 * 
 */
package br.com.elaborata.revisao;

import javax.swing.JOptionPane;

import br.com.elaborata.revisao.Teclado;

/**
 * Classe responsável por receber um número inteiro e montar uma matriz<br>
 * quadrada representada por "*".<br>
 * 
 * @author Roque Junior
 *
 */
public class Exercicio6 {
	
	static Teclado teclado = new Teclado();

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("Programa que mostra uma matriz representada por *");
		
		System.out.println("Digite o tamanho da matriz");
		Integer tamanho = teclado.nextInt();
		String matriz = "";
		
		for (int i = 0; i < tamanho; i++) {
			for (int j = 0; j < tamanho; j++) {
				matriz = matriz + "  *  ";
			}
			matriz = matriz+"\n";
		}
		
		JOptionPane.showMessageDialog(null, matriz);
	}

}
