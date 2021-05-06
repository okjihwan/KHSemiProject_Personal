package com.touchtrip.main.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.touchtrip.main.model.service.IntroToMainService;
import com.touchtrip.main.model.vo.MainAllFamous;
import com.touchtrip.main.model.vo.MainPagingInfo;
import com.touchtrip.main.model.vo.MainTop6Famous;

/**
 * Servlet implementation class IntroToMain
 */
@WebServlet("/checkMain.do")
public class IntroToMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IntroToMain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<MainTop6Famous> listTop6 = new ArrayList<>();
		ArrayList<MainAllFamous> listAll = new ArrayList<>();
		ArrayList<MainAllFamous> listPage = new ArrayList<>(); 

		IntroToMainService service = new IntroToMainService();
		
		
		int startPage;			
		int endPage;			
		int maxPage; 			
		int currentPage;		
		int limit = 10;			
		currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int countPage =  service.countPage();
		
		maxPage = (int)((double)countPage / 8 + 0.9);
		
		startPage = (int)(((double)currentPage / 8 + 0.9) - 1) * limit + 1;
		
		endPage = startPage + 9;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		MainPagingInfo pageInfo = new MainPagingInfo(startPage, endPage, maxPage, currentPage, limit, countPage);

		
		listTop6 = service.selectTop6Famous();
		listAll = service.selectAllFamous();
		listPage = service.settingPage(currentPage);
		
//		System.out.println(listTop6);
		
		request.setAttribute("listTop6", listTop6);
		request.setAttribute("listAll", listAll);
		request.setAttribute("listPage", listPage);
		request.setAttribute("pageInfo", pageInfo);
		
		System.out.println(listTop6);
		
		request.getRequestDispatcher("views/main/mainPage.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
