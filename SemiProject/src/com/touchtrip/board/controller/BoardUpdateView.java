package com.touchtrip.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.touchtrip.board.model.service.BoardService;
import com.touchtrip.board.model.vo.Board;

/**
 * Servlet implementation class BoardUpdateView
 */
@WebServlet("/updateView.bo")
public class BoardUpdateView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardUpdateView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		BoardService service = new BoardService();
		
		Board b = service.updateView(bno);
		
		String page = "";
		
		if( b != null) {
			request.setAttribute("board", b);
			
			page="views/board/boardUpdate.jsp";
		} else {
			
			request.setAttribute("error-msg", "게시글 수정화면 접근 불가!");
			
			page = "views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(page)
		       .forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
