package kr.co.kmarket.controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket.dto.CS_BoardDTO;
import kr.co.kmarket.service.CS_BoardService;

@WebServlet("/cs/board/list.do")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 2283589879373746478L;

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private CS_BoardService service = CS_BoardService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse respones) throws ServletException, IOException {
		
		String group = request.getParameter("group");
		String cate = request.getParameter("cate");

		request.setAttribute("group", group);
		request.setAttribute("cate", cate);
		
		//String bno = request.getParameter("bno");
		//String uid = request.getParameter("uid");
		//String type1 = request.getParameter("type1");
		//String type2 = request.getParameter("type2");
		//String title = request.getParameter("title");
		//String content = request.getParameter("content");
		
		/*
		 * logger.info("BoardList_get uid : " + uid);
		 * logger.info("BoardList_get type1 : " + type1);
		 * logger.info("BoardList_get type2 : " + type2);
		 * logger.info("BoardList_get title : " + title);
		 */
		
		
		//CS_BoardDTO dto = new CS_BoardDTO();
		//dto.setBno(Integer.parseInt(bno));
		//dto.setUid(uid);
		//dto.setType1(Integer.parseInt(type1));
		//dto.setType2(Integer.parseInt(type2));
		//dto.setTitle(title);
		//dto.setContent(content);
		
		List<CS_BoardDTO> list 
			= service.selectCS_Boards();
		
		request.setAttribute("cs", list);
		logger.info("BoardList_get list : " + list);
		
		request.getRequestDispatcher("/cs/board/list.jsp").forward(request, respones);
	}
}