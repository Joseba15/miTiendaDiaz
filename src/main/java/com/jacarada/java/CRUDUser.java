package com.jacarada.java;

import java.time.LocalDate;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDUser {

	
	
	
	public static void saveUser(String username, String password, String nombre, String apellido, LocalDate fechaNacimiento, String genero, boolean admin) {
        Session session = ConnectionBD.getSession();
        User usuario = new User(nombre, password, nombre, apellido, fechaNacimiento, genero, admin);
        session.getTransaction().begin();
        session.save(usuario);
        session.getTransaction().commit();
    }
	
	
	public static User getUser(String name ) {
		Session session =  ConnectionBD.getSession();
			
		User user = (User) session.get(User.class,name);
		return user;
		
	}
	
	
	
	public static String getMD5(String input) {

        String pass = DigestUtils.md5Hex(input);
        return pass;
    }
	
	
	public static boolean check(String username, String password) {
		String passwordEnc = getMD5(password);
		boolean isValid = false;
		
		
		if (getUser(username)!= null) {
			isValid= true;
		}
		
		return isValid;
	}
	
}
