package kr.bit.auction.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import common.db.MyAppSqlConfig;
import kr.bit.auction.mapper.AuctionMapper;
import kr.bit.auction.vo.CommentsVO;

@WebServlet("/auction/insertComment.do")
public class InsertCommentServlet extends HttpServlet {
	SqlSession session = null;
	AuctionMapper mapper = null;
	
	public InsertCommentServlet(){
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		CommentsVO comment = new CommentsVO();
		comment.setCommentsContent(request.getParameter("content"));
		comment.setAcNo(Integer.parseInt(request.getParameter("acNo")));
		comment.setMbNo(Integer.parseInt(request.getParameter("mbNo")));
		mapper.insertComment(comment);
		session.commit();
		
		String page = request.getParameter("page");
		String url = "afootDetail.do?acNo=";
		if(page.equals("top")) url="topDetail.do?acNo=";
		
//		RequestDispatcher rd = request.getRequestDispatcher(url+request.getParameter("acNo"));
//		rd.forward(request, response);
		response.sendRedirect(url+request.getParameter("acNo"));
	}
	
}
