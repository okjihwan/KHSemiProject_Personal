package com.touchtrip.Allplanner.map.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.touchtrip.Allplanner.map.model.service.MapService;
import com.touchtrip.Allplanner.map.model.vo.MapData;

/**
 * Servlet implementation class moveToPlan
 */
@WebServlet("/moveToPlan.pl")
public class moveToPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public moveToPlan() {

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		String type = request.getParameter("type");
		String includedData = request.getParameter("includedData");
		
		MapService service = new MapService();
		
		ArrayList<MapData> movingList = service.goToPlan(type, );
		
		new Gson().toJson(movingList, response.getWriter());
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
