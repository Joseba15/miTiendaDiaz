package com.jacarada.java;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDMedicamento {

	public static List<Medicamento> getMedicines() {
		Session session= ConnectionBD.getSession();
		Query<Medicamento> query = session.createQuery("SELECT p FROM medicamentos p");
		ArrayList<Medicamento> listMedicina = (ArrayList<Medicamento>) query.getResultList();
		
		return listMedicina;
		}
	
	
}
