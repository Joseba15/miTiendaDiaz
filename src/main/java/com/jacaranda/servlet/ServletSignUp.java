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
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
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
		int admin = Integer.valueOf(request.getParameter("admin"));
		
		boolean realAdmin = true;

		String passEncript = CRUDUser.getMD5(contrasena);

		if (admin==0 ) {
			realAdmin=false;
		}
		
		if (CRUDUser.getUser(nombreusuario)==null) {
			CRUDUser.saveUser(nombreusuario,passEncript,nombre,apellido,birthday,genero,realAdmin);
			response.sendRedirect("Login.html");
			
		}
		
		//user,passEncript,realAdmin,first,last,birthday,gender
		
	}

}
