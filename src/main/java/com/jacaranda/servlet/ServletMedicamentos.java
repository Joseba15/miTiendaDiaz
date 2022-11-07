package com.jacaranda.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jacarada.java.CRUDUser;

/**
 * Servlet implementation class ServletMedicamentos
 */
@WebServlet("/ServletMedicamentos")
public class ServletMedicamentos extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ServletMedicamentos() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String usuario = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		if(usuario !=null && password !=null){
	    	if(CRUDUser.getUser(usuario) != null && CRUDUser.getUser(usuario).getNombreUsuario().equals(usuario)  && CRUDUser.getUser(usuario).getContrasena().equals(password)){
	    		HttpSession session  = request.getSession();
	         	session.setAttribute("login", "True");
	         	session.setAttribute("usuario", usuario);
	         	
	    
	    		RequestDispatcher rd = request.getRequestDispatcher("prueba.html");		
	       	} else { 
	       		response.sendRedirect("Error.html");
	  	 	}
		}else {
			
			RequestDispatcher rd = request.getRequestDispatcher("Error.html");
			rd.include(request, response);
		}
		
		out.close();
		
		
	}

}
