package com.jacaranda.servlet;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacarada.java.CRUDUser;
import com.jacarada.java.User;

/**
 * Servlet implementation class ServletSignUp
 */
@WebServlet("/ServletSignUp")
public class ServletSignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		
		
		
		String nombreusuario= request.getParameter("username");
		String contrasena = request.getParameter("password");
		String nombre=request.getParameter("first");
		String apellido= request.getParameter("last");
		LocalDate birthday= LocalDate.parse(String.valueOf(request.getParameter("birthday")));
		String genero =(request.getParameter("gender"));
		//int admin = Integer.valueOf(request.getParameter("admin"));
		int admin=0;
		
		boolean realAdmin = true;

		String passEncript = CRUDUser.getMD5(contrasena);

		if (admin==0 ) {
			realAdmin=false;
		}
		
		if(nombreusuario!= null && contrasena!=null && nombre !=null && apellido!=null
				&& birthday!=null && genero!=null){
			
			if (CRUDUser.getUser(nombreusuario)==null && CRUDUser.isValidUser(contrasena, passEncript, nombre, apellido, birthday, genero, realAdmin)==true) {
				CRUDUser.saveUser(nombreusuario,passEncript,nombre,apellido,birthday,genero,realAdmin);
				response.sendRedirect("Login.html");
				
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
						+"<h1>Error 400</h1>"
						+"<h4>User already exits!. Or data is too long for column on database</h4>"
						+"</body>"
						+"</html>");
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
					+"<h1>Error 400</h1>"
					+"<h4>All the form data mustn't be null</h4>"
					+"</body>"
					+"</html>");
		}
		
		
	}

}
