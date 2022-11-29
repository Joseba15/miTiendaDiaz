package com.jacaranda.servlet;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Locale.Category;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jacarada.java.CRUDMedicamento;
import com.jacarada.java.CRUDUser;
import com.jacarada.java.Categoria;
import com.jacarada.java.CRUDCategoria;

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
		
		Integer stock = null;
		Double price=null;
		Integer categoryId=null;
		String name= request.getParameter("name");
		String description = request.getParameter("description");
		
		try {
			 price= Double.valueOf(request.getParameter("price"));
			 categoryId = Integer.valueOf(request.getParameter("category"));
			 stock = Integer.valueOf(request.getParameter("stock"));
			
		} catch (Exception e) {
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
					+"<h4>Price can not parse</h4>"
					+"</body>"
					+"</html>");
			
			throw e;
		}
		String fileUrl = request.getParameter("file");		

		Categoria categoria=CRUDCategoria.getCategoria(categoryId);
	
		
		if ((description!=null && !description.isEmpty()) || price!=null ||categoryId!=null) {
			if (CRUDMedicamento.existMedicamento(name)) {
				CRUDMedicamento.saveMedicines( name, description, price, categoria,stock);
				
				ServletContext context = this.getServletContext(); 
				RequestDispatcher dispatcher = context.getRequestDispatcher("/ServletLogIn"); 
				
				
				dispatcher.forward(request, response);
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
						+"<h4>Data is null or data is too long for column </h4>"
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
					+"<h4>Medicine already exits!</h4>"
					+"</body>"
					+"</html>");
			
		}
		
		
		
	}

}
