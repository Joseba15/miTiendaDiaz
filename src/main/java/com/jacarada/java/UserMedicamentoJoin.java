package com.jacarada.java;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

public class UserMedicamentoJoin  implements Serializable {

	
	
	public UserMedicamentoJoin() {
		super();
	}
	
	private String nombreUsuario;
	private Integer id_medic;
	private LocalDateTime fechaCompra;
	
	
	public String getNombreUsuario() {
		return nombreUsuario;
	}
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}
	public Integer getId_medic() {
		return id_medic;
	}
	public void setId_medic(Integer id_medic) {
		this.id_medic = id_medic;
	}
	public LocalDateTime getFechaCompra() {
		return fechaCompra;
	}
	public void setFechaCompra(LocalDateTime fechaCompra) {
		this.fechaCompra = fechaCompra;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(fechaCompra, id_medic, nombreUsuario);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserMedicamentoJoin other = (UserMedicamentoJoin) obj;
		return Objects.equals(fechaCompra, other.fechaCompra) && Objects.equals(id_medic, other.id_medic)
				&& Objects.equals(nombreUsuario, other.nombreUsuario);
	}
	
	
	
	
}
