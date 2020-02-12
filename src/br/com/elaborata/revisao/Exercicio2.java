/**
 * 
 */
package br.com.elaborata.revisao;

import javax.swing.JOptionPane;

import br.com.elaborata.revisao.Teclado;

/**
 * Classe responsável por exibir a tabuada de um número informado ou<br>
 * a tabuada do 1 ao 10.<br>
 * 
 * @author Roque Junior
 * @since 2020
 *
 */
public class Exercicio2 {

	static Teclado teclado = new Teclado();

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("Programa que mostra a tabuada de um número" +
					" ou a tabuada do 1 ao 10");

		while (true) {
			System.out.println("Digite a opção");
			System.out.println("1 - Tabuada de 1 número");
			System.out.println("2 - Tabuada do 1 ao 10");
			System.out.println("3 - Sair");

			switch (teclado.nextInt()) {
			case 1:
				System.out.println("Informe o numero");
				Integer numero = teclado.nextInt();
				for (int i = 1; i <= 10; i++) {
					System.out.println(numero + " X " + i + " = " + numero * i);
				}
				break;

			case 2:
				for (int i = 1; i <= 10; i++) {
					System.out.println("Tabuada do numero " + i);
					for (int j = 1; j <= 10; j++) {
						System.out.println(i + " X " + j + " = " + i * j);
					}
					System.out.println();
				}
				break;
				
			case 3:
				JOptionPane.showMessageDialog(null, "Obrigado por utilizar a aplicação!");
				System.exit(0);
			default:
				JOptionPane.showMessageDialog(null, "Opção inválida!");
				break;
			}
		}
	}
}
