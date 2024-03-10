/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.codegym.storage.control;



import com.codegym.storage.dao.DAO;
import com.codegym.storage.entity.Category;
import com.codegym.storage.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;



@WebServlet(name = "CategoryControl", urlPatterns = {"/category"})
public class CategoryControl extends HttpServlet {

   
	private static final long serialVersionUID = 1938702325553764368L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String cateID = request.getParameter("cid");
   
        DAO dao = new DAO();
        List<Product> list = dao.getProductByCID(cateID);
        List<Category> listC = dao.getAllCategory();
        Product last = dao.getLast();
        
        
        
        request.setAttribute("listP", list);
        request.setAttribute("listCC", listC);
        request.setAttribute("p", last);
        request.setAttribute("tag", cateID);
        request.getRequestDispatcher("home1.jsp").forward(request, response);
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
