package com.jacarada.java;

import java.util.Locale.Category;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity (name = "categoria")
public class Medicamento {

	@Id
	private int id;
	private String name;
	private String description;
	private Double precio;
	@ManyToOne
	@JoinColumn (name="id_categ")
	private Categoria categoria;
	
	public Medicamento() {}

	public Medicamento(int id, String name, String description, Double precio, Categoria categoria) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.precio = precio;
		this.categoria = categoria;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	

}
