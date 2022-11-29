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

	<a href="ServletLogIn"><button>Volver</button></a>

	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Cantidad</th>
			<th>Precio</th>
		</tr>
		<% Carrito carrito = (Carrito) session.getAttribute("carrito");
		   Double precioTotal = 0.0; %>
		<% for (MedicamentoCarrito medCarrito : carrito.getListaCarrito() ) { %>	
			<tr>
				<td><%=medCarrito.getIdMedicamento().getName() %></td>
				<td><%=medCarrito.getCantidad() %></td>
				<td><%=medCarrito.getPrecio() %></td>
			</tr>
			<%precioTotal= precioTotal+medCarrito.getPrecio(); %>
		<%}%>
		
		<h4>Precio Total: <%= precioTotal %></h4>
		<br>
		
		<a href="ComprarLista.jsp"><button>Comprar</button></a>
		<a href="BorrarLista.jsp"><button>Borrar Carrito</button></a>
	</table>
</body>
</html>