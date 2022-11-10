package com.jacaranda.servlet;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacarada.java.CRUDMedicamento;
import com.jacarada.java.CRUDUser;
import com.jacarada.java.Categoria;

/**
 * Servlet implementation class ServletAddMedicamentos
 */
@WebServlet("/ServletAddMedicamentos")
public class ServletAddMedicamentos extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ServletAddMedicamentos() {
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
		

		String name= request.getParameter("name");
		String description = request.getParameter("description");
		Double price= Double.valueOf(request.getParameter("price"));
		Categoria category= request.getParameter("category");
		String fileUrl = request.getParameter("file");		


	
		
		if (true) {
			CRUDMedicamento.saveMedicines( name, description, price, category);
			response.sendRedirect("ServletMedicamentos");
			
		}
		
	}

}
