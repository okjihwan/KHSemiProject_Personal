package com.touchtrip.member.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.touchtrip.member.model.service.MemberService;
import com.touchtrip.member.model.vo.Member;



/**
 * Servlet implementation class MemberInsert
 */
@WebServlet("/insert.me")
public class MemberInsert extends HttpServlet {
	private static final long serialVersionUID = 1414L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String userId = request.getParameter("userId");
//		int userType = Integer.parseInt(request.getParameter("userType"));
		String userPwd = request.getParameter("userPwd");
		String userName = request.getParameter("userName");
		String nickName = request.getParameter("nickName");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
//		Date enrollDate = request.getParameter("enrollDate");
		String status = request.getParameter("status");
		
	
		Member m = new Member(userId, 1, userPwd, userName, nickName, age, gender, phone, null, status);
		
		MemberService service = new MemberService();
		
		int result = service.insertMember(m);
		
		if(result > 0) {
			
			// 회원 가입 성공
	         response.sendRedirect("/planner/checkMain.do");
			
		} else {
			// 회원 가입 실패
			RequestDispatcher view = 
					request.getRequestDispatcher("/views/common/errorPage.jsp");
			
			request.setAttribute("error-msg", "회원 가입 실패");
			
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