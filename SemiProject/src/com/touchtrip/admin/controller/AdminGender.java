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
 * Servlet implementation class AdminGender
 */
@WebServlet("/checkGender.ad")
public class AdminGender extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminGender() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		int genderValue = Integer.parseInt(request.getParameter("gender"));
		
		AdminService service = new AdminService();
		
		int[] arrayGenderArea = new int[6];
		String[] arrayGenderAreaName = new String[6];
		int[] arrayGenderFamous = new int[6];
		String[] arrayGenderFamousName = new String[6];
		int[] arrayGenderAge = new int[5];
		int[] arrayGenderPersonnel = new int[6];
		int[] arrayGenderDay = new int[6];
		
		arrayGenderArea = service.checkGenderArea(genderValue);
		arrayGenderAreaName = service.arrayGenderAreaName(genderValue);
		arrayGenderFamous = service.checkGenderFamous(genderValue);
		arrayGenderFamousName = service.checkGenderFamousName(genderValue);
		arrayGenderAge = service.checkGenderAge(genderValue);
		arrayGenderPersonnel = service.checkGenderPersonnel(genderValue);
		arrayGenderDay = service.arrayGenderDay(genderValue);
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("arrayGenderArea", arrayGenderArea);
		map.put("arrayGenderAreaName", arrayGenderAreaName);
		map.put("arrayGenderFamous", arrayGenderFamous);
		map.put("arrayGenderFamousName", arrayGenderFamousName);
		map.put("arrayGenderAge", arrayGenderAge);
		map.put("arrayGenderPersonnel", arrayGenderPersonnel);
		map.put("arrayGenderDay", arrayGenderDay);
		
		new Gson().toJson(map, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
