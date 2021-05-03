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
		
//		HashMap<String, int[]> h = new HashMap();
		
		int ageValue = Integer.parseInt(request.getParameter("age"));

//		System.out.println(ageValue);

		AdminService service = new AdminService();
		
		
		// ==================== 지역별 선호 인원 ====================
		int[] arrayAge = new int[6];
		int[] arrayGender = new int[2];
//		int[] arrayFamous = new int[2];
		
//		arrayAge = service.checkAge();
		arrayGender = service.checkGender(ageValue);
//		
		if(ageValue == 10) {
			// 여기에 각각의 서비스 실행해서 값 가져오기
			arrayAge = new int[] {10, 20, 30, 40, 50 ,60};
//			arrayGender = new int[] {10, 20};
		}
		
		else if (ageValue == 20) {
			// 여기에 각각의 서비스 실행해서 값 가져오기
			arrayAge = new int[] {60, 50, 40, 30, 20 ,10};
		}
		
		else if (ageValue == 30) {
			// 여기에 각각의 서비스 실행해서 값 가져오기
			arrayAge = new int[] {60, 10, 50, 20, 40 ,30};
		}
		
		else if (ageValue == 40) {
			// 여기에 각각의 서비스 실행해서 값 가져오기
			arrayAge = new int[] {10, 60, 20, 50, 30 ,40};
		}
		
		else if (ageValue == 50) {
			// 여기에 각각의 서비스 실행해서 값 가져오기
			arrayAge = new int[] {10, 30, 20, 10, 30 ,40};
		}
		
		HashMap<String, int[]> map = new HashMap<>();
		map.put("arrayAge", arrayAge);
		map.put("arrayGender", arrayGender);
//		map.put("arrayFamous", arrayFamous);

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
