<%@page import="com.jacarada.java.Carrito"%>
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
Carrito carrito = (Carrito) session.getAttribute("carrito");
carrito.vaciarLista();
response.sendRedirect("Compra.jsp");
%>

</body>
</html>