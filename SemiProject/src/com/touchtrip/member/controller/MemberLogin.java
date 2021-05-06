package com.touchtrip.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.touchtrip.member.model.service.MemberService;
import com.touchtrip.member.model.vo.Member;

/**
 * Servlet implementation class MemberLogin
 */
@WebServlet("/login.me")
public class MemberLogin extends HttpServlet {
	private static final long serialVersionUID = 1414L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		// System.out.println(userId + "/" + userPwd);
		
		Member loginMember = new Member(userId, userPwd);
		
		MemberService service = new MemberService();
		
		loginMember = service.selectMember(loginMember);
		
		if(loginMember != null) {
			
			HttpSession session = request.getSession();
			
			session.setAttribute("member", loginMember);
			
			response.sendRedirect("/planner/checkMain.do");

		} else {
			
			request.setAttribute("error-msg", "로그인 실패!");
			
			RequestDispatcher view
			   = request.getRequestDispatcher("views/common/errorPage.jsp");
			
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
