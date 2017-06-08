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
import kr.bit.auction.vo.SelectMenuVO;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
@WebServlet("/auction/top.do")
public class TopAuctionServlet extends HttpServlet{
	SqlSession session = null;
	AuctionMapper mapper = null;
	
	public TopAuctionServlet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
	}
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pdtTypeNo = request.getParameter("pdtTypeNo"); 
		
		SelectMenuVO select = new SelectMenuVO();
		select.setSelectType("high");
		select.setPdtTypeNo(pdtTypeNo);
		List<AuctionVO> auctions =	mapper.selectTopAuction(select);
		
		request.setAttribute("auctions", auctions);
		request.setAttribute("auctionsLength", new Integer(auctions.size()-1));
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/auction/top.jsp");
		rd.forward(request, response);
	}

}
