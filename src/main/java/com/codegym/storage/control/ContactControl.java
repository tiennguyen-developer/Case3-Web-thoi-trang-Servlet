package com.codegym.storage.control;



import com.codegym.storage.dao.DAO;
import com.codegym.storage.entity.Contact;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "mcontact", urlPatterns = { "/mcontact" })
public class ContactControl extends HttpServlet {

	private static final long serialVersionUID = 8174176798290058650L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		// Khởi tạo DAO
		DAO dao = new DAO();
		List<Contact> list = dao.getallContact();
		request.setAttribute("listcontact", list);
		request.getRequestDispatcher("MContact.jsp").forward(request, response);
	}

}


