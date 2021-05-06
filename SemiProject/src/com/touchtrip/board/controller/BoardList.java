package com.touchtrip.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.touchtrip.board.model.service.BoardService;
import com.touchtrip.board.model.vo.Board;
import com.touchtrip.board.model.vo.PageInfo;

/**
 * Servlet implementation class BoardList
 */
@WebServlet("/list.bo")
public class BoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 커뮤니티 목록 처리 변수
		ArrayList<Board> list = new ArrayList<>();
		BoardService service = new BoardService();
		
		// 페이지 변수
		int startPage;  	// 시작 페이지 
		int endPage;    	// 끝 페이지    
		int maxPage;   		// 실제 끝 페이지 
		int currentPage; 	// 현재 페이지
		int limit = 10;     // 보여줄 페이지 수
		
		currentPage = 1;    // 첫 페이지
		
		if ( request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		// 총 게시글 확인
		int listCount = service.getListCount();		
		
		maxPage = (int)((double)listCount/10 + 0.9);
		startPage = (int)(((double)currentPage/10 + 0.9) - 1) * limit + 1;
		endPage = startPage + 9;

	
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		list = service.selectList(currentPage);
		
		request.setAttribute("list", list);
		PageInfo pi = new PageInfo(startPage, endPage, maxPage, currentPage, limit, listCount);
		
		request.setAttribute("pi", pi);
		System.out.println(list);
		System.out.println(pi);
		RequestDispatcher view =
				request.getRequestDispatcher("views/board/community.jsp");
		
		view.forward(request, response);

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
