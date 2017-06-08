package kr.bit.auction.main;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.auction.constants.ProductCode;
import kr.bit.auction.mapper.AuctionMapper;
import kr.bit.auction.member.util.BringSqlSession;
import kr.bit.auction.vo.AuctionVO;
import kr.bit.auction.vo.SelectMenuVO;

@WebServlet("/main/Main.do")
public class MainServlet extends HttpServlet{
	AuctionMapper mapper= null;
	public MainServlet() {
		mapper = BringSqlSession.getMapper(AuctionMapper.class);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<AuctionVO> top3 = mapper.selectTop3Auction();
		
		String[] codes = {ProductCode.ELECTRONICS_CD.getKey(),
						  ProductCode.CLOTHES_CD.getKey(),
						  ProductCode.FOOD_CD.getKey(),
						  ProductCode.ETC_CD.getKey()};
		String[] categorys = {ProductCode.ELECTRONICS_CD.getValue(),
							  ProductCode.CLOTHES_CD.getValue(),
							  ProductCode.FOOD_CD.getValue(),
							  ProductCode.ETC_CD.getValue()};
		SelectMenuVO[] selects = new SelectMenuVO[4];
		List<List<AuctionVO>> auctions = new ArrayList<>();
		for(int i=0; i < selects.length; i++) {
			selects[i] = new SelectMenuVO();
			selects[i].setSelectType("main");
			selects[i].setPdtTypeNo(codes[i]);
			List<AuctionVO> list = mapper.selectAfootAuction(selects[i]);
			auctions.add(list);
		}
		
		request.setAttribute("top3", top3);
		request.setAttribute("auctions", auctions);
		request.setAttribute("categorys", categorys);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/main/main.jsp");
		rd.forward(request, response);
	}
	
}
