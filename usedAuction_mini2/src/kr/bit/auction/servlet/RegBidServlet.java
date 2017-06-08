package kr.bit.auction.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import common.db.MyAppSqlConfig;
import kr.bit.auction.constants.Code;
import kr.bit.auction.mapper.AuctionMapper;
import kr.bit.auction.member.vo.MemberGenericVO;
import kr.bit.auction.vo.BidVO;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
@WebServlet("/auction/insertBid.do")
public class RegBidServlet extends HttpServlet{

	SqlSession session = null;
	AuctionMapper mapper = null;
	
	public RegBidServlet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberGenericVO user = (MemberGenericVO)request.getSession().getAttribute("user");
		BidVO bid = new BidVO();
		
		int acNo = Integer.parseInt(request.getParameter("acNo"));
		int bidPrice = Integer.parseInt(request.getParameter("bidPrice"));
		bid.setAcNo(acNo);
		bid.setBidPrice(bidPrice);
		bid.setSbidResult(Code.BID_RESULT_ING_CD.getKey());
		bid.setMbNo(user.getMbNo());
		bid.setBidDate(new Date());
		
		int cnt =mapper.insertBid(bid);
		session.commit();
		String result = "fail";
		if (cnt == 1) result = "ok";
		
		
		response.sendRedirect("afootDetail.do?acNo="+acNo+"&result="+result);
		
	}
	
}
