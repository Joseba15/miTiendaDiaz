package com.jacarada.java;

import java.time.LocalDateTime;
import java.util.ArrayList;
import com.jacarada.java.MedicamentoCarrito;

public class Carrito {

	private ArrayList<MedicamentoCarrito> listaCarrito= new ArrayList<>();
	

	public Carrito(ArrayList<MedicamentoCarrito> listaCarrito) {
		this.listaCarrito=listaCarrito;
	}
	
	public Carrito() {}

	
	
	
	public void addArticulo(Medicamento idMedicamento, int cantidad, LocalDateTime fechaCompra, Double precio) {
		listaCarrito.add(new MedicamentoCarrito(idMedicamento, cantidad, precio, fechaCompra));

	}
	
	
	public void delArticulo(Medicamento idMedicamento) {

		for (MedicamentoCarrito medicamentoCarrito : listaCarrito) {
			if (medicamentoCarrito.getIdMedicamento()==idMedicamento) {			
				listaCarrito.remove(medicamentoCarrito);
			}
		}
		
	}
	
	
	public boolean vaciarLista() {
		boolean resultado=false;
		if(this.listaCarrito.size()>0) {
			resultado=true;
			this.listaCarrito.clear();
			
		}
		return resultado;
	}
	
	
	public ArrayList<MedicamentoCarrito> getListaCarrito() {
		return listaCarrito;
	}

	public void setListaCarrito(ArrayList<MedicamentoCarrito> listaCarrito) {
		this.listaCarrito = listaCarrito;
	}
			
	
	
}
