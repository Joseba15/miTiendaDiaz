<%@page import="com.jacarada.java.CRUDMedicamento"%>
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

Integer cantidad = Integer.valueOf(request.getParameter("cantidad"));
Integer codigo = Integer.valueOf(request.getParameter("codigo"));


Carrito carrito = (Carrito) session.getAttribute("carrito");
carrito.addArticulo( codigo,cantidad, LocalDateTime.now());

%>
<h3 align="center">Medicine already added!</h3>
<br>
<%
	ServletContext context = this.getServletContext(); 
	RequestDispatcher dispatcher = context.getRequestDispatcher("/ServletLogIn"); 
	
	
	dispatcher.forward(request, response);
%>

<a href="ServletLogIn"><button>Go Back</button></a>

</body>
</html>