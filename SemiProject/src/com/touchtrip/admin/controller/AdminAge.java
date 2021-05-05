package com.touchtrip.admin.controller;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.touchtrip.admin.model.service.AdminService;
import com.touchtrip.admin.model.vo.Admin;

/**
 * Servlet implementation class AdminAge
 */
@WebServlet("/checkAge.ad")
public class AdminAge extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAge() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		int ageValue = Integer.parseInt(request.getParameter("age"));

		AdminService service = new AdminService();
		
		int[] arrayArea = new int[6];
		String[] arrayAreaName = new String[6];
		int[] arrayFamous = new int[6];
		String[] arrayFamousName = new String[6];
		int[] arrayGender = new int[2];
		int[] arrayPersonnel = new int[6];
		int[] arrayDay = new int[6];
		
		int todayJoinMember = service.countMemberWeek();
		arrayArea = service.checkArea(ageValue);
		arrayAreaName = service.checkAreaName(ageValue);
		arrayFamous = service.checkFamous(ageValue);
		arrayFamousName = service.checkFamousName(ageValue);
		arrayGender = service.checkGender(ageValue);
		arrayPersonnel = service.checkPersonnel(ageValue);
		arrayDay = service.checkDay(ageValue);
			
		HashMap<String, Object> map = new HashMap<>();
		map.put("todayJoinMember", todayJoinMember);
		map.put("arrayArea", arrayArea);
		map.put("arrayAreaName", arrayAreaName);
		map.put("arrayFamous", arrayFamous);
		map.put("arrayFamousName", arrayFamousName);
		map.put("arrayGender", arrayGender);
		map.put("arrayPersonnel", arrayPersonnel);
		map.put("arrayDay", arrayDay);

		new Gson().toJson(map, response.getWriter());
		
//		System.out.println();
		
//		new Gson().toJson(arrayAge, response.getWriter());
//		new Gson().toJson(arrayGender, response.getWriter());
//		new Gson().toJson(arrayFamous, response.getWriter());
		
		
		// ==================== 지역별 선호 인원 ====================
		
		// ==================== 성별 ====================
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
