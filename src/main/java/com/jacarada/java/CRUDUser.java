package com.jacarada.java;

import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.query.Query;

public class CRUDUser {

	
	
	public static boolean saveUser(User user) {
		ConnectionBD c1 = new ConnectionBD();
		boolean resultado=false;
		Session session = c1.getSession();
		
		try {
			
			session.getTransaction().begin();
			session.save(user);
			session.getTransaction().commit();			
			resultado=true;			

		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	
	
	public static User getUser(String name ) {
		ConnectionBD c1 = new ConnectionBD();
		Session session = c1.getSession();
			
		User user = (User) session.get(User.class,name);
		return user;
		
	}
	
	
	public static String getMD5(String input) {

        String pass = DigestUtils.md5Hex(input);
        return pass;
    }
	
	
}
