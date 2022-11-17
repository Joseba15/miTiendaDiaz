package com.jacarada.java;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import com.jacarada.java.Categoria;


public class CRUDCategoria {

	
	public static List<Categoria> getCategories() {
		Session session= ConnectionBD.getSession();
		Query<Categoria> query = session.createQuery("SELECT p FROM categoria p");
		ArrayList<Categoria> listCategorias = (ArrayList<Categoria>) query.getResultList();
		
		return listCategorias;
		}
	
	
	public static Categoria getCategoria(Integer id) {
		Session session= ConnectionBD.getSession();
		Categoria categoria = (Categoria) session.get(Categoria.class,id);
		
		return categoria;
	}
	
	
}
