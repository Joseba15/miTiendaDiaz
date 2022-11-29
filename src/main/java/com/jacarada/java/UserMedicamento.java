package com.jacarada.java;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity (name="usuario_medicamentos")
@IdClass(UserMedicamentoJoin.class)
public class UserMedicamento {

	@Id
	@ManyToOne
	@JoinColumn (name="id_medic", insertable=false, updatable=false)
	private Medicamento id_medic;
	
	
	@Id
	@ManyToOne
	@JoinColumn (name="nombreUsuario", insertable=false, updatable=false)
	private User nombreUsuario;
		
	@Id
	@Column (name="fechaCompra")
	private LocalDateTime fechaCompra;
	
	
	@Column (name="precioTotal")
	private Double price;
	
	
	@Column (name="cantidad")
	private int cantidad;

	
	

	public UserMedicamento(Medicamento id_medic, User nombreUsuario, LocalDateTime fechaCompra, Double price,
			int cantidad) {
		super();
		this.id_medic = id_medic;
		this.nombreUsuario = nombreUsuario;
		this.fechaCompra = fechaCompra;
		this.price = price;
		this.cantidad = cantidad;
	}


	public UserMedicamento() {
		super();
	}

	public Medicamento getId_medic() {
		return id_medic;
	}


	public void setId_medic(Medicamento id_medic) {
		this.id_medic = id_medic;
	}


	public User getNombreUsuario() {
		return nombreUsuario;
	}


	public void setNombreUsuario(User nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}


	public LocalDateTime getFechaCompra() {
		return fechaCompra;
	}


	public void setFechaCompra(LocalDateTime fechaCompra) {
		this.fechaCompra = fechaCompra;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	
	
	
}
