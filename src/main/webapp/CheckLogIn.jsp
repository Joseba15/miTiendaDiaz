<%@page import="com.jacarada.java.CRUDUser"%>
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
	

	String usuario = request.getParameter("user");
	String password = request.getParameter("password");
	
	if(usuario !=null && password !=null){
    	if(CRUDUser.getUser(usuario) != null && CRUDUser.getUser(usuario).getNombreUsuario().equals(usuario)  && CRUDUser.getUser(usuario).getContrasena().equals(password)){
         	session.setAttribute("login", "True");
         	session.setAttribute("usuario", usuario);
         	session.setAttribute("password",password);
    		response.sendRedirect("principal.jsp");
            		
       	} else { 
       		response.sendRedirect("Error.html");
  	 	}
	 } 

%>	
</body>
</html>