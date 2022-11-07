package com.jacarada.java;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class ConnectionBD {
	
	private  StandardServiceRegistry sr;
	private  SessionFactory sf;
	private  Session session;

	
	public ConnectionBD() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}
	
	
	public  Session getSession() {	
		return session;
	}
	
}
