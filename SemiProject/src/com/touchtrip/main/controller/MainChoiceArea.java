package com.touchtrip.main.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.touchtrip.main.model.service.IntroToMainService;
import com.touchtrip.main.model.vo.MainAllFamous;


@WebServlet("/choiceArea.do")
public class MainChoiceArea extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainChoiceArea() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		
		ArrayList<MainAllFamous> listArea = new ArrayList<>();
		
		int value = Integer.parseInt(request.getParameter("areaValue"));
		
		System.out.println(value);
		
		IntroToMainService service = new IntroToMainService();
		
		listArea = service.selectArea(value);

		System.out.println(listArea);

		

		/*
		 * if(value == 0) { listArea = service.selectAllFamous();
		 * System.out.println("��ü ���� ���� Ȯ��"); }
		 */
		
		new Gson().toJson(listArea, response.getWriter());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
