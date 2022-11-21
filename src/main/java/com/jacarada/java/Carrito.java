package com.jacarada.java;

import java.time.LocalDateTime;
import java.util.ArrayList;

public class Carrito {

	private ArrayList<MedicamentoCarrito> listaCarrito;
	

	public Carrito(ArrayList<MedicamentoCarrito> listaCarrito) {
		this.listaCarrito = new ArrayList<>();
	}
	
	public Carrito() {}

	
	
	
	public void addArticulo(int idMedicamento, int cantidad, LocalDateTime fechaCompra) {
		
		for (MedicamentoCarrito medicamentoCarrito : listaCarrito) {
			if (medicamentoCarrito.getIdMedicamento()!=idMedicamento) {			
				listaCarrito.add(new MedicamentoCarrito(idMedicamento, cantidad, fechaCompra));
			}
		}
		
	}
	
	
	public void delArticulo(int idMedicamento) {

		for (MedicamentoCarrito medicamentoCarrito : listaCarrito) {
			if (medicamentoCarrito.getIdMedicamento()==idMedicamento) {			
				listaCarrito.remove(medicamentoCarrito);
			}
		}
		
	}
	
	
	public ArrayList<MedicamentoCarrito> getListaCarrito() {
		return listaCarrito;
	}

	public void setListaCarrito(ArrayList<MedicamentoCarrito> listaCarrito) {
		this.listaCarrito = listaCarrito;
	}
			
	
	
}
