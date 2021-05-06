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
import com.touchtrip.Allplanner.map.model.vo.Accommodation;

/**
 * Servlet implementation class MapAccommodation
 */
@WebServlet("/buttonAccommodation.pl")
public class MapAccommodation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MapAccommodation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		MapService service = new MapService();
		
		ArrayList<Accommodation> MapService = new ArrayList<>();
		
		MapService = service.buttonAccommodation();
		
		new Gson().toJson(MapService, response.getWriter());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
