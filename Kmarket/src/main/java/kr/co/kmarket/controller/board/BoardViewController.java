package kr.co.kmarket.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cs/board/view.do")
public class BoardViewController extends HttpServlet {
	private static final long serialVersionUID = 3283589879373746478L;

	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse respones) throws ServletException, IOException {
		
		String group = request.getParameter("group");
		String cate = request.getParameter("cate");
		
		
		request.setAttribute("group", group);
		request.setAttribute("cate", cate);
		
		
		request.getRequestDispatcher("/cs/board/view.jsp").forward(request, respones);
	}
}