<%@page import="com.jacarada.java.Carrito"%>
<%@page import="com.jacarada.java.CRUDCarrito"%>
<%@page import="com.jacarada.java.CRUDUser"%>
<%@page import="com.jacarada.java.UserMedicamento"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

HttpSession sesion=request.getSession();
String isSesion = (String) sesion.getAttribute("login");
String user= (String) sesion.getAttribute("usuario");
%>

<%
Carrito carrito = (Carrito) session.getAttribute("carrito");
%>
<a href="ServletLogIn"><button>Volver</button></a>
<div class="padre">
	<table border="1">	
		<tr>
			<th>Articulo</th>
			<th>Descripcion</th>
			<th>Cantidad</th>
			<th>Precio</th>
			<th>Fecha</th>
		</tr>
	<%if(CRUDCarrito.loadList().size() >0){
		for(UserMedicamento um: CRUDCarrito.loadList() ){
			if(um.getNombreUsuario() ==CRUDUser.getUser(user)){
				%>
				<tr>
					<td><%=um.getId_medic().getName()%></td>
					<td> <%=um.getId_medic().getDescription()%></td>
					<td> <%=um.getCantidad() %> Articles</td>
					<td> <%=um.getPrice()%> </td>
					<td> <%=um.getFechaCompra() %></td>
				</tr>
				<%
			}
			
		}
	} 
	%>
	</table>
</div>
</body>
</html>