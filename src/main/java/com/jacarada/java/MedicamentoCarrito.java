package com.jacarada.java;

import java.time.LocalDateTime;
import java.util.Objects;

public class MedicamentoCarrito {

	private Medicamento idMedicamento;
	private int cantidad;
	private Double precio; 
	private LocalDateTime fechaCompra ;
	
	


	public MedicamentoCarrito(Medicamento idMedicamento, int cantidad, Double precio, LocalDateTime fechaCompra) {
		super();
		this.idMedicamento = idMedicamento;
		this.cantidad = cantidad;
		this.precio = precio*cantidad;
		this.fechaCompra = fechaCompra;
	}


	public Medicamento getIdMedicamento() {
		return idMedicamento;
	}


	public void setIdMedicamento(Medicamento idMedicamento) {
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


	public Double getPrecio() {
		return precio;
	}


	public void setPrecio(Double precio) {
		this.precio = precio;
	}


	@Override
	public String toString() {
		return "MedicamentoCarrito [idMedicamento=" + idMedicamento + ", cantidad=" + cantidad + ", precio=" + precio
				+ ", fechaCompra=" + fechaCompra + "]";
	}


	@Override
	public int hashCode() {
		return Objects.hash(cantidad, fechaCompra, idMedicamento, precio);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MedicamentoCarrito other = (MedicamentoCarrito) obj;
		return cantidad == other.cantidad && Objects.equals(fechaCompra, other.fechaCompra)
				&& idMedicamento == other.idMedicamento && Objects.equals(precio, other.precio);
	}
	
	
	
	
	
	
	
	
	
}
