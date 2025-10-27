package com.mybatis.board.controller;

import java.io.IOException;

import com.mybatis.board.dto.Board;
import com.mybatis.board.service.BoardServiceImpl;
import com.mybatis.member.dto.Member;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/boardInsert.bo")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Board b = new Board();
		
		b.setContent(request.getParameter("content"));
		b.setTitle(request.getParameter("title"));
		b.setWriter(request.getParameter("userId"));
		
		int result = new BoardServiceImpl().insertBoard(b);
		response.getWriter().print(result);
		
		request.getRequestDispatcher("/WEB-INF/views/board/boardInsertView.jsp").forward(request,response);
	}
}
