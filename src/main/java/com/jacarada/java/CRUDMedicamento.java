package com.jacarada.java;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDMedicamento {

	public static List<Medicamento> getMedicines() {
		Session session= ConnectionBD.getSession();
		Query<Medicamento> query = session.createQuery("SELECT p FROM medicamentos p");
		ArrayList<Medicamento> listMedicina = (ArrayList<Medicamento>) query.getResultList();
		
		return listMedicina;
		}
	
	public static void saveMedicines(String nombre,String descripcion, Double precio, Categoria categoria) {
        Session session = ConnectionBD.getSession();
        Medicamento medicamento= new Medicamento( nombre,descripcion,precio,categoria);
        session.getTransaction().begin();
        session.save(medicamento);
        session.getTransaction().commit();
    }
}
