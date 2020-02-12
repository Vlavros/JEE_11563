/**
 * 
 */
package br.com.elaborata.revisao;

import br.com.elaborata.revisao.Teclado;

/**
 * Classe responsável por executar um programa que mostra o quadrado de um número<br>
 * informado pelo utilizador.<br>
 * 
 * @author Roque Junior
 * 
 * @since 2020
 *
 */
public class Exercicio1 {
	
	static Teclado teclado = new Teclado();

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("Programa que recebe um número inteiro\n" +
					"e retorna o quadrado deste número");

		System.out.println("Digite um número inteiro");

		Integer numero = teclado.nextInt();

		System.out.printf("O quadrado de %d é: %d", numero, (int)Math.pow(numero, 2.0));

	}

}
