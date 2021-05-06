package com.touchtrip.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.touchtrip.admin.model.service.AdminService;
import com.touchtrip.admin.model.vo.Admin;

/**
 * Servlet implementation class AdminHome
 */
@WebServlet("/countMember.ad")
public class AdminHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminService service = new AdminService();
		
		Admin a = service.countMemberJoin();
		int result = service.countMemberWeek();
		
		System.out.println(result);
		
		request.setAttribute("countMember", a);
		request.setAttribute("weekJoin", result);
			
//		response.sendRedirect("views/admin/admin.jsp");
		request.getRequestDispatcher("views/admin/admin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
