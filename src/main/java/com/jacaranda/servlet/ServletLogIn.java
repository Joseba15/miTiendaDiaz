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
//		// TODO Auto-generated method stub
//		response.getWriter().append("<!DOCTYPE html>"
//				+ "<html>"
//				+ "<head>"
//				+ "<meta charset=\"UTF-8\">"
//				+ "<title>"
//				+ "Pagina Error"
//				+ "</title>"
//				+ "<link rel='stylesheet' type='text/css' href='CSS/mvp.css'>"
//				+ "</head>"
//				+ "<body>"
//				+"<h1>Error 404</h1>"
//				+"<h4>Page not Found</h4>"
//				+"</body>"
//				+"</html>");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */ 
	
	
	 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session  = request.getSession();
		PrintWriter out = response.getWriter();
		
		String usuario = request.getParameter("username");
		String password = request.getParameter("password");
		Carrito carrito = new Carrito();
		
		if((usuario ==null && password ==null)){
            usuario = (String) session.getAttribute("usuario");
            password =(String) session.getAttribute("password");
            
            if((usuario ==null || usuario.isEmpty()) && (password ==null || password.isEmpty())){
            	response.getWriter().append("<!DOCTYPE html>"
            			+ "<html>"
            			+ "<head>"
            			+ "<meta charset=\"UTF-8\">"
            			+ "<title>"
            			+ "Pagina Error"
            			+ "</title>"
            			+ "<link rel='stylesheet' type='text/css' href='css/mvp.css'>"
            			+" <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65' crossorigin='anonymous'>"
            			+ "</head>"
            			+ "<body>"
            			+"<h1>Error 400!</h1>"
            			+"<h4>Not parse</h4>"
            			+"</body>"
            			+"</html>");
            }
		}

		if(usuario !=null && password !=null ){
	    	if(CRUDUser.getUser(usuario) != null && CRUDUser.getUser(usuario).getNombreUsuario().equals(usuario)  && CRUDUser.getUser(usuario).getContrasena().equals(CRUDUser.getMD5(password))){
	    		
	         	session.setAttribute("login", "True");
	         	session.setAttribute("usuario", usuario);
	         	session.setAttribute("password", password);
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
	    				+ "<a href=\"ListadoOrdenado.jsp\"><input type='button' name='historial' value='Mostrar Hitorial'></a>"
	    				+ "<br>"
	    				+ "<br>"
	    				+ "<table border='2'>"
	    				+ "<tr>"
	    				+ "<th id='id'>Id: </th>"
	    				+ "<th id='name'>Nombre: </th>"
	    				+ "<th id='description'>Descripcion: </th>"
	    				+ "<th id='price'>Precio: </th>"
	    				+ "<th id='category'>Nombre Categoria: </th>");
	    				if (CRUDUser.getUser(usuario).isAdmin() ) {
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
	    					+ "<td>"
								+"<form action='AddToCarrito.jsp' method='post' > "
    								+ "<input type='text' hidden name='precio' value='"+medicamento.getPrecio()+"'> ");
    								if(medicamento.getStock() >=1) {
                                        out.println(
                                        		"<button type='submit' name='codigo' value='"+medicamento.getId()+"'>Add</button> "+
                                        		"Cantidad<input type='number' min='1' max='"+medicamento.getStock()+"' value='1' name='cantidad'>"
                                                );
                                    }else {
                                        out.println("<p>No stock</p>");
                                        
                                    }out.println(
								 " </form>"
	    					+"</td>"); 
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
		    				+ "<a href=\"ServletLogIn\"><input type='button' name='back' value='Go Back'></a>"
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
	    				+ "<a href=\"ServletLogIn\"><input type='button' name='back' value='Go Back'></a>"
	    				+"</body>"
	    				+"</html>");
	  	 	}
		
		
		
		out.close();
		
		
	}

}
