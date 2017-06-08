package kr.bit.auction.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import common.db.MyAppSqlConfig;
import kr.bit.auction.mapper.AuctionMapper;
import kr.bit.auction.member.vo.MemberGenericVO;
import kr.bit.auction.vo.MyAuctionVO;
import kr.bit.auction.vo.MyBidVO;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
@WebServlet("/auction/myAuction.do")
public class MyAuctionServlet extends HttpServlet{
	SqlSession session = null;
	AuctionMapper mapper = null;
	
	public MyAuctionServlet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
	}
	

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberGenericVO user = (MemberGenericVO)session.getAttribute("user");
		int mbNo = user.getMbNo();
		
		List<MyBidVO> bidList = mapper.selectMyBid(mbNo);
		List<MyAuctionVO> auctionList = mapper.selectMyAuction(mbNo);
		request.setAttribute("bidList", bidList);
		request.setAttribute("auctionList", auctionList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/auction/myAuction.jsp");
		rd.forward(request, response);
	}

}
