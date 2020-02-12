/**
 * 
 */
package br.com.elaborata.revisao;

import br.com.elaborata.revisao.Teclado;

/**
 * 
 * Classe que recebe 2 números e realiza as operações matemáticas.<br>
 * 
 * @author Roque Junior
 * @since 2020
 *
 */
public class Exercicio5 {

	static Teclado teclado = new Teclado();

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {

			System.out.println("Programa que informa soma, subtração, divisão e multiplicação de dois numeros");

			System.out.println("Digite o 1º numero");
			Double numero1 = teclado.nextDouble();
			System.out.println("Digite o 2º numero");
			Double numero2 = teclado.nextDouble();

			System.out.println("A soma é : " + (numero1 + numero2));
			System.out.println("A subtração é : " + (numero1 - numero2));
			System.out.println("A divisão é : " + (numero1 / numero2));
			System.out.println("A multiplicação é : " + (numero1 * numero2));
			
		} catch (ArithmeticException e) {
			System.out.println(e.getStackTrace());
		}
	}

}
