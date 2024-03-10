package com.codegym.storage.control;

import com.codegym.storage.dao.DAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "AddAccountControl", urlPatterns = {"/addAccount"})
public class AddAccountControl extends HttpServlet {

	private static final long serialVersionUID = -2991155897139265090L;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String aname = request.getParameter("name");
        String apass= request.getParameter("PassWord");
        String isSell = request.getParameter("IsSell");
        String isAdmin = request.getParameter("IsAdmin");
       
        
        DAO dao = new DAO();
        dao.insertAccount(aname, apass, isSell, isAdmin);
        response.sendRedirect("manage");
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
    }// </editor-fold>

}
