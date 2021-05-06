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
 * Servlet implementation class SearchDataMapList
 */
@WebServlet("/data.search")
public class SearchDataMapList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchDataMapList() {  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		String keyword = request.getParameter("keyword");
		MapService service = new MapService();
		ArrayList<MapData> mapList = service.searchDate(type, keyword);
		
		response.setContentType("application/json; charset=UTF-8");
		
		new Gson().toJson(mapList, response.getWriter());
		
	}
}
