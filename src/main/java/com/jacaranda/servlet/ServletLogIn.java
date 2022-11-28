package com.jacaranda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jacarada.java.CRUDMedicamento;
import com.jacarada.java.CRUDUser;
import com.jacarada.java.Carrito;
import com.jacarada.java.Medicamento;

/**
 * Servlet implementation class ServletLogIn
 */
@WebServlet("/ServletLogIn")
public class ServletLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 8
     */
    public ServletLogIn() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("<!DOCTYPE html>"
				+ "<html>"
				+ "<head>"
				+ "<meta charset=\"UTF-8\">"
				+ "<title>"
				+ "Pagina Error"
				+ "</title>"
				+ "<link rel='stylesheet' type='text/css' href='CSS/mvp.css'>"
				+ "</head>"
				+ "<body>"
				+"<h1>Error 404</h1>"
				+"<h4>Page not Found</h4>"
				+"</body>"
				+"</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */ 
	
	
	 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		PrintWriter out = response.getWriter();
		
		String usuario = request.getParameter("username");
		String password = request.getParameter("password");
		Carrito carrito = new Carrito();
		
		if(usuario !=null && password !=null ){
	    	if(CRUDUser.getUser(usuario) != null && CRUDUser.getUser(usuario).getNombreUsuario().equals(usuario)  && CRUDUser.getUser(usuario).getContrasena().equals(CRUDUser.getMD5(password))){
	    		HttpSession session  = request.getSession();
	         	session.setAttribute("login", "True");
	         	session.setAttribute("usuario", usuario);
	         	session.setAttribute("carrito", carrito);
	         	
	         	
	         	response.setContentType("text/html");
	         	
	         	
	         	response.getWriter().append("<!DOCTYPE html>"
	    				+ "<html>"
	    				+ "<head>"
	    				+ "<meta charset=\"UTF-8\">"
	    				+ "<title>"
	    				+ "Lista Medecinas"
	    				+ "</title>"
//    				    + "<link rel='stylesheet' type='text/css' href='CSS/mvp.css'>"
	    				+ "</head>"	
	    				+ "<body>"
	    				+ "<a href=\"Login.html\"><input type='button' name='logout' value='LogOut'></a> "
	    				+ "<a href=\"Compra.jsp\"><img src='IMAGES/carrito.png' width='40' height='40' id='imagen'></a>"
	    				+ "<br>"
	    				+ "<br>"
	    				+ "<table border='2'>"
	    				+ "<tr>"
	    				+ "<th id='id'>Id: </th>"
	    				+ "<th id='name'>Nombre: </th>"
	    				+ "<th id='description'>Descripcion: </th>"
	    				+ "<th id='price'>Precio: </th>"
	    				+ "<th id='category'>Nombre Categoria: </th>");
	    				if (CRUDUser.getUser(usuario).isAdmin()) {
	    					response.getWriter().append("<th id='enlace'>"
	    							+ "<a href=\"AddMedicamento.jsp\">Add Medicamento</a></th>"
	    							+ "</tr>");							
						}
	    
	         	List<Medicamento> lista = CRUDMedicamento.getMedicines();
	         	
	         	for (Medicamento medicamento : lista) {
	         		response.getWriter().append("<tr>"
	    					+ "<td>" + medicamento.getId() + "</td>"
	    					+ "<td>" + medicamento.getName()+ "</td>"
	    					+ "<td>" + medicamento.getDescription() + "</td>"
	    					+ "<td>" + medicamento.getPrecio()+ "</td>"
	    					+ "<td>" + medicamento.getCategoria().getNombre() + "</td>"
	    					+ "<td>"+"<form action='AddToCarrito.jsp' method='post' ><button type='submit' name='codigo' value='"+medicamento.getId()+"'>Add</button> Cantidad<input type='number' name='cantidad'> </form>"+"</td>"); 
	    					}
	         		
				}else {
					
					response.getWriter().append("<!DOCTYPE html>"
							+ "<html>"
							+ "<head>"
							+ "<meta charset=\"UTF-8\">"
							+ "<title>"
							+ "Pagina Error"
							+ "</title>"
							+ "<link rel='stylesheet' type='text/css' href='css/mvp.css'>"
							+ "</head>"
							+ "<body>"
							+"<h1>Error 400!</h1>"
							+"<h4>Data is null or data is too long for column</h4>"
							+"</body>"
							+"</html>");
				}
	         	
	    		
	       	} else { 
	       		response.getWriter().append("<!DOCTYPE html>"
	    				+ "<html>"
	    				+ "<head>"
	    				+ "<meta charset=\"UTF-8\">"
	    				+ "<title>"
	    				+ "Pagina Error"
	    				+ "</title>"
	    				+ "<link rel='stylesheet' type='text/css' href='css/mvp.css'>"
	    				+ "</head>"
	    				+ "<body>"
	    				+"<h1>Error 400!</h1>"
	    				+"<h4>User doesn't exits on database!</h4>"
	    				+"</body>"
	    				+"</html>");
	  	 	}
		
		
		
		out.close();
		
		
	}

}
