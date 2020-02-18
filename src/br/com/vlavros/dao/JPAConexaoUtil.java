package br.com.vlavros.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAConexaoUtil {

	private static EntityManagerFactory emf = null;
	
	public static EntityManager criaEM() {
		if(emf == null) {
			emf = Persistence.createEntityManagerFactory("universidadePU");
		}
			return emf.createEntityManager();
	}
	
}
