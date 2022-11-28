package com.jacarada.java;

import java.util.Locale.Category;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity (name = "medicamentos")
public class Medicamento {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="nombre")
	private String name;
	@Column(name="descripcion")
	private String description;
	private Double precio;
	@ManyToOne
	@JoinColumn (name="id_categ")
	private Categoria categoria;
	private Integer stock;
	
	public Medicamento() {}

	public Medicamento(String name, String description, Double precio, Categoria categoria,Integer stock) {
		super();
		
		this.name = name;
		this.description = description;
		this.precio = precio;
		this.categoria = categoria;
		this.stock=stock;
		
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

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}
	
	
	

}
