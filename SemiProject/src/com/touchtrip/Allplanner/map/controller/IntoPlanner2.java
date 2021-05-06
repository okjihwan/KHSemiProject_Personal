package com.touchtrip.Allplanner.map.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

import com.google.gson.Gson;
import com.touchtrip.Allplanner.map.model.service.MapService;
import com.touchtrip.Allplanner.map.model.vo.MapData;

/**
 * Servlet implementation class IntoPlanner2
 */
@WebServlet("/goPlanner2.pl")
public class IntoPlanner2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IntoPlanner2() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MapData[] mapList = new Gson().fromJson(request.getParameter("mapData"), MapData[].class);

//	 System.out.println("---------------");
//	 System.out.println(m);

		System.out.println("----------------------");
		
		for(MapData mm : mapList) {
			
			System.out.println(mm);
		}
		
		System.out.println("----------------------");
		
		request.setAttribute("mapList", mapList);
		RequestDispatcher savedlist = request.getRequestDispatcher("views/planner/planner2.jsp");
		
		savedlist.forward(request, response);
		
//		System.out.println(savedlist);
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
