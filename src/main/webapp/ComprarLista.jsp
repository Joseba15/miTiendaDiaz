<%@page import="com.jacarada.java.CRUDCarrito"%>
<%@page import="com.jacarada.java.UserMedicamento"%>
<%@page import="com.jacarada.java.CRUDMedicamento"%>
<%@page import="com.jacarada.java.Carrito"%>
<%@page import="com.jacarada.java.CRUDUser"%>
<%@page import="com.jacarada.java.Medicamento"%>
<%@page import="com.jacarada.java.User"%>
<%@page import="com.jacarada.java.MedicamentoCarrito"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Carrito carrito = (Carrito) session.getAttribute("carrito");


	User u = CRUDUser.getUser((String)session.getAttribute("usuario"));
		
	for( MedicamentoCarrito m: carrito.getListaCarrito() ) {
		Medicamento med = m.getIdMedicamento() ;
				
		UserMedicamento um = new UserMedicamento(med, u,  m.getFechaCompra(), m.getPrecio() , m.getCantidad());
		CRUDMedicamento.updateArticleStock(med.getId() , um.getCantidad());
		CRUDCarrito.addUserMedicine(um);
		
			
	}
	
	carrito.vaciarLista();
	response.sendRedirect("Compra.jsp");

%>

</body>
</html>