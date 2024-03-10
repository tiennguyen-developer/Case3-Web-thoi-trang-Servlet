package com.codegym.storage.control;



import com.codegym.storage.dao.DAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet(name = "DeleteControl", urlPatterns = {"/delete"})
public class DeleteControl extends HttpServlet {

	private static final long serialVersionUID = 2890091925459791074L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        String pid = request.getParameter("pid");
	        DAO dao = new DAO();
	        dao.deleteProduct(pid);
	        response.sendRedirect("managers");
	}
	
	  @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }

	  
	   
	    @Override
	    public String getServletInfo() {
	        return "Short description";
	    }
}
