<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.jacarada.java.CRUDMedicamento"%>
<%@page import="com.jacarada.java.Medicamento"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.jacarada.java.MedicamentoCarrito"%>
<%@page import="com.jacarada.java.Carrito"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Carrito carrito = (Carrito) session.getAttribute("carrito");

Integer cantidad = Integer.valueOf(request.getParameter("cantidad"));
Integer codigo = Integer.valueOf(request.getParameter("codigo"));
Medicamento med = CRUDMedicamento.getMedicine(codigo);


Double precio = Double.valueOf(request.getParameter("precio"));



if( med.getStock()>0 && med.getStock() >= cantidad){
	carrito.addArticulo( med, cantidad, LocalDateTime.now(),precio); 
}

%>	


<%
ServletContext context = this.getServletContext(); 
RequestDispatcher dispatcher = context.getRequestDispatcher("/ServletLogIn");
%>


</body>
</html>