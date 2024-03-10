package com.codegym.storage.control;

import com.codegym.storage.dao.DAO;
import com.codegym.storage.entity.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;



@WebServlet(name = "member", urlPatterns = { "/member" })
public class MemberControl extends HttpServlet{


	private static final long serialVersionUID = -626679442102775982L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// Khởi tạo DAO
		DAO dao = new DAO();
		List<Member> list = dao.getallMember();
		request.setAttribute("listmember", list);
		request.getRequestDispatcher("Member.jsp").forward(request, response);
	}
}
