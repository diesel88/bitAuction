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
import kr.bit.auction.member.vo.MemberGenericVO;
import kr.bit.auction.vo.AuctionVO;
import kr.bit.auction.vo.SelectMenuVO;

@WebServlet("/auction/updateAuctionForm.do")
public class UpdateAuctionFormServlet extends HttpServlet {
	SqlSession session = null;
	AuctionMapper mapper = null;
	
	public UpdateAuctionFormServlet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int acNo = Integer.parseInt(request.getParameter("acNo"));
		MemberGenericVO user = (MemberGenericVO)request.getSession().getAttribute("user");
		String url = "../main/Main.do";
		if(user != null) {
			SelectMenuVO select = new SelectMenuVO();
			select.setAcNo(acNo);
			select.setSelectType("low");
			List<AuctionVO> list = mapper.selectAfootAuction(select);
			AuctionVO auction = null;
			if(list != null) {
				auction = list.get(0);
			}
			
			request.setAttribute("auction", auction);
			
			url = "/jsp/auction/updateAuctionForm.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		}
		else {
			response.sendRedirect(url);
		}
	}
	
}
