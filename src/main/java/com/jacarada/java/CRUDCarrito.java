package com.jacarada.java;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;

public class CRUDCarrito {

	public CRUDCarrito() {
		
	}
	
	
	public static boolean addUserMedicine(UserMedicamento um) {
		boolean resultado=false;
		Session session = ConnectionBD.getSession();
		try {
			session.getTransaction().begin();
			session.saveOrUpdate(um);
			session.getTransaction().commit();
			resultado=true;
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resultado;
	}
	
	public static List<UserMedicamento> loadList(){
		Session session =  ConnectionBD.getSession();
		List<UserMedicamento> list= new ArrayList<>();
		Query query=session.createQuery("SELECT um FROM usuario_medicamentos um ORDER BY fechaCompra ASC");
		list= query.getResultList();
		return list;
		
	}
	
	
}
