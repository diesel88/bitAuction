package kr.bit.auction.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import common.db.MyAppSqlConfig;
import kr.bit.auction.mapper.AuctionMapper;
import kr.bit.auction.vo.AuctionVO;
import kr.bit.auction.vo.BidVO;
import kr.bit.auction.vo.CommentsVO;
import kr.bit.auction.vo.SelectMenuVO;

@WebServlet("/auction/afootDetail.do")
public class AfootAuctionDetailServlet extends HttpServlet{
	SqlSession session = null;
	AuctionMapper mapper = null;
	
	public AfootAuctionDetailServlet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int acNo = Integer.parseInt(request.getParameter("acNo"));
		SelectMenuVO select = new SelectMenuVO();
		select.setSelectType("low");
		select.setAcNo(acNo);
		
		List<AuctionVO> list = mapper.selectAfootAuction(select);
		List<CommentsVO> comments = mapper.selectComments(acNo);
		List<BidVO> bids = mapper.selectBidHistory(acNo);
		int currentPrice = mapper.selectCurrentPrice(acNo);
		
		request.setAttribute("auction", list.get(0));
		request.setAttribute("comments", comments);
		request.setAttribute("bids", bids);
		request.setAttribute("currentPrice", String.valueOf(currentPrice));
		request.setAttribute("acNo", String.valueOf(acNo));
		request.setAttribute("result", request.getParameter("result"));
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/auction/afootDetail.jsp");
		rd.forward(request, response);
	}
	
}
