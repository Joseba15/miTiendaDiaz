<%@page import="com.jacarada.java.Carrito"%>
<%@page import="com.jacarada.java.MedicamentoCarrito"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista del Carrito</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Cantidad</th>
			<th>Fecha Compra</th>
		</tr>
		<% Carrito carrito = (Carrito) session.getAttribute("carrito");%>
		<% for (MedicamentoCarrito medCarrito : carrito.getListaCarrito() ) { %>	
			<tr>
				<td><%medCarrito.getIdMedicamento(); %></td>
				<td><%medCarrito.getCantidad(); %></td>
				<td><%medCarrito.getFechaCompra(); %></td>
			</tr>
			
		<%}%>
	</table>
</body>
</html>