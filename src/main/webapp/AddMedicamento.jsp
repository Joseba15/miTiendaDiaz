<%@page import="com.jacarada.java.Categoria"%>
<%@page import="com.jacarada.java.CRUDCategoria"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Medicamento</title>
<link href="CSS/mvp.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="formDiv">
            <form action="ServletAddMedicamentos" method="post">
            <h1>Add Medicamento</h1>
				<label>Name:</label>
				<input type="text" name="name" required>
				<br>
				<label>Description :</label>
				<input type="text" name="description" required>
				<br>
				<label>Price :</label>
				<input type="number" name="price" step="any">
				<br>
				<label>Category :</label>
				<select name="category" >
					<% List<Categoria> listCategoria = CRUDCategoria.getCategories(); 
					   for(Categoria c: listCategoria){
						%>
						<option value="<%=c.getId()%>"><%=c.getNombre() %></option>
						<%} %>
				</select> 
				<br>
				<label>Add File  :</label>
				<input type="file" name="file" >
				<br>
				<br>
				<button type="submit" name="confirm">Confirm</button>
			</form>
			<a href="Login.html"><button name="back">Back</button></a>
	</div>
</body>
</html>