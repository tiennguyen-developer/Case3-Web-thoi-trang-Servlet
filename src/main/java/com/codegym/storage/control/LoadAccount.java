package com.codegym.storage.control;

import com.codegym.storage.dao.DAO;
import com.codegym.storage.entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "LoadAccount", urlPatterns = {"/loadAccount"})
public class LoadAccount extends HttpServlet {

	private static final long serialVersionUID = -2798622480067319742L;



	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("uid");
        DAO dao = new DAO();
        Account a = dao.getAccountByID(id);
        
        request.setAttribute("account", a);
        
        request.getRequestDispatcher("EditAccount.jsp").forward(request, response);
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
