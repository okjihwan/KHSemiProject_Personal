package com.touchtrip.main.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.touchtrip.main.model.service.IntroToMainService;
import com.touchtrip.main.model.vo.MainAllFamous;
import com.touchtrip.main.model.vo.MainPagingInfo;

/**
 * Servlet implementation class MainPaging
 */
@WebServlet("/choicePage.do")
public class MainPaging extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainPaging() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		ArrayList<MainAllFamous> listSelectPage = new ArrayList<>();
		IntroToMainService service = new IntroToMainService();
		
		int startPage;			
		int endPage;			
		int maxPage; 			
		int currentPage;		
		int limit = 10;			
		currentPage = 1;
		
		if(request.getParameter("value") != null) {
			currentPage = Integer.parseInt(request.getParameter("value"));
//			System.out.println(currentPage);
		}
		
		// 전체 여행정보 갯수 확인 하는 서비스
		int countPage =  service.countPage();
		
		maxPage = (int)((double)countPage / 8 + 0.9);
		
		startPage = (int)(((double)currentPage / 8 + 0.9) - 1) * limit + 1;
		
		endPage = startPage + 9;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		listSelectPage = service.settingPage(currentPage);
		
		MainPagingInfo pageInfo = new MainPagingInfo(startPage, endPage, maxPage, currentPage, limit, countPage);
		
//		System.out.println(listSelectPage);
//		System.out.println(pageInfo);
		
		HashMap<String, Object> map = new HashMap<>();
		
		map.put("listSelectPage", listSelectPage);
		map.put("pageInfo", pageInfo);
		
		new Gson().toJson(map, response.getWriter());
		
//		new Gson().toJson(listSelectPage, response.getWriter());
//		new Gson().toJson(pageInfo, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
