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
				+ "<link rel='stylesheet' type='text/css' href='css/mvp.css'>"
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
		String password = CRUDUser.getMD5(request.getParameter("password"));
		
		
		if(usuario !=null && password !=null){
	    	if(CRUDUser.getUser(usuario) != null && CRUDUser.getUser(usuario).getNombreUsuario().equals(usuario)  && CRUDUser.getUser(usuario).getContrasena().equals(password)){
	    		HttpSession session  = request.getSession();
	         	session.setAttribute("login", "True");
	         	session.setAttribute("usuario", usuario);
	         	
	         	
	         	response.setContentType("text/html");
	         	
	         	
	         	response.getWriter().append("<!DOCTYPE html>"
	    				+ "<html>"
	    				+ "<head>"
	    				+ "<meta charset=\"UTF-8\">"
	    				+ "<title>"
	    				+ "Lista Medecinas"
	    				+ "</title>"
	    				+ "<link rel='stylesheet' type='text/css' href='css/mvp.css'>"
	    				+ "</head>"
	    				+ "<body>"
	    				+ "<table border='2'>"
	    				+ "<tr>"
	    				+ "<th id='id'>Id: </th>"
	    				+ "<th id='name'>Nombre: </th>"
	    				+ "<th id='description'>Descripcion: </th>"
	    				+ "<th id='price'>Precio: </th>"
	    				+ "<th id='category'>Nombre Categoria: </th>");
	    				if (CRUDUser.getUser(usuario).isAdmin()) {
	    					response.getWriter().append("<th id='enlace'>"
	    							+ "<a href=\"AddMedicamento.html\"></a></th>"
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
	    					+ "<td>"+"</td>"
	    					+ "</tr>"); 
	    					}
				}
	         	
	    		//RequestDispatcher rd = request.getRequestDispatcher("prueba.html");
	    		//response.sendRedirect("prueba.html");
	    		
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
;
	  	 	}
		
		
		
		out.close();
		
		
	}

}
