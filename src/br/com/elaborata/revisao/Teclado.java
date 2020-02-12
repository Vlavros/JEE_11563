package br.com.elaborata.revisao;

import java.util.Scanner;

/**
 * Classe que representa o teclado para ser utilizado nos exercícios<br>
 * 
 * @author Roque Junior
 * @since 2020
 *
 */
public class Teclado {

	private Scanner teclado = new Scanner(System.in);

	public String nextWord() {

		return teclado.next();
	}

	public String nextLine() {

		return teclado.nextLine();
	}

	public Integer nextInt() {

		return teclado.nextInt();
	}

	public Double nextDouble() {

		return teclado.nextDouble();
	}
	
	public Boolean nextBoolean() {
		
		return teclado.nextBoolean();
	}

}
