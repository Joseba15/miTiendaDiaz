package com.jacarada.java;

import java.time.LocalDateTime;

public class MedicamentoCarrito {

	private int idMedicamento;
	private int cantidad;
	private LocalDateTime fechaCompra ;
	
	
	public MedicamentoCarrito(int idMedicamento, int cantidad, LocalDateTime fechaCompra) {
		super();
		this.idMedicamento = idMedicamento;
		this.cantidad = cantidad;
		this.fechaCompra = fechaCompra;
	}


	public int getIdMedicamento() {
		return idMedicamento;
	}


	public void setIdMedicamento(int idMedicamento) {
		this.idMedicamento = idMedicamento;
	}


	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}


	public LocalDateTime getFechaCompra() {
		return fechaCompra;
	}


	public void setFechaCompra(LocalDateTime fechaCompra) {
		this.fechaCompra = fechaCompra;
	}
	
	
	
	
	
	
	
}
