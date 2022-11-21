package com.jacarada.java;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDMedicamento {

	public static Medicamento getMedicine(int idMedicamento) {
		Session session =  ConnectionBD.getSession();
		
		Medicamento medicamento = (Medicamento) session.get(Medicamento.class,idMedicamento);
		return null;
	}
	
	
	public static List<Medicamento> getMedicines() {
		Session session= ConnectionBD.getSession();
		Query<Medicamento> query = session.createQuery("SELECT p FROM medicamentos p");
		ArrayList<Medicamento> listMedicina = (ArrayList<Medicamento>) query.getResultList();
		
		return listMedicina;
		
		}
	

	
	
	public static void saveMedicines(String nombre,String descripcion, Double precio, Categoria categoria) {
        Session session = ConnectionBD.getSession();
        Medicamento medicamento= new Medicamento(nombre,descripcion,precio,categoria);
        
        try {
        	session.getTransaction().begin();
        	session.save(medicamento);
        	session.getTransaction().commit();
			
		} catch (Exception e) {

			e.printStackTrace();
			session.getTransaction().rollback();
		}
        
        
    }
	
	
	
	public static boolean existMedicamento(String nombre ) {
		
		boolean res = false;

        Session session = ConnectionBD.getSession();
        List<Medicamento> listMedicamento= new ArrayList<>();
        Query query=ConnectionBD.getSession().createQuery("SELECT m FROM medicamentos m WHERE nombre like '"+nombre+"'");
        
        listMedicamento = query.getResultList();
        if(listMedicamento.size()==0) {
            res=true;
        }
        return res;
		
    }
	
	
	
}
