package kr.bit.auction.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import common.db.MyAppSqlConfig;
import kr.bit.auction.mapper.AuctionMapper;

@WebServlet("/auction/cancelAuction.do")
public class CancelAuctionServlet extends HttpServlet {

	SqlSession session = null;
	AuctionMapper mapper = null;
	
	public CancelAuctionServlet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int acNo = Integer.parseInt(request.getParameter("acNo"));
		
		int cnt = mapper.cancelAuction(acNo);
		session.commit();
		
		response.sendRedirect("myAuction.do");
	}
	
}
