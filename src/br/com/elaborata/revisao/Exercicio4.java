/**
 * 
 */
package br.com.elaborata.revisao;

import br.com.elaborata.revisao.Teclado;

/**
 * Classe responsável por receber o nome e a idade do utilizador e mostrar<br>
 * se é maior de idade ou não.<br>
 * 
 * @author Roque Junior
 * @since 2020
 *
 */
public class Exercicio4 {

	static Teclado teclado = new Teclado();

	/**
	 * Método que executa o programa
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("Programa que informa se é possível tirar CNH");

		System.out.println("Informe seu nome");
		String nome = teclado.nextWord();
		System.out.println("Informe sua idade");
		Integer idade = teclado.nextInt();

		System.out.println(
				idade >= 18 ?
					nome + " você pode tirar a CNH"
				:
					nome + " você ainda não pode tirar a CNH. Você tem " + idade + " anos."
				);

	}

}
