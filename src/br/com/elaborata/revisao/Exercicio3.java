/**
 * 
 */
package br.com.elaborata.revisao;

import br.com.elaborata.revisao.Teclado;

/**
 * 
 * Classe responsável por receber 2 números inteiros e mostrar os números<br>
 * que estão entre o 1º e o 2º números.<br>
 * 
 * @author Roque Junior
 * @since 2020
 *
 */
public class Exercicio3 {

	static Teclado teclado = new Teclado();

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("Programa que recebe dois numeros inteiros e \n"
				+ "mostra ao final os numeros entre o 1º e o 2º numero");

		System.out.println("Digite o 1º numero");
		Integer numero1 = teclado.nextInt();
		System.out.println("Digite o 2º numero");
		Integer numero2 = teclado.nextInt();

		if (numero1 != numero2) {
			if (numero2 > numero1 + 1) {
				while (numero2!=++numero1) {
					System.out.print(numero1 + " , ");
				}
			} else if (numero1 > numero2 + 1) {
				while (numero2!=--numero1) {
					System.out.print(numero1 + " , ");
				}
			} else {
				System.out.println("Não existem números entre os números informados");
			}
		} else {
			System.out.println("Os números são iguais!");
		}
		
		
	}

}
