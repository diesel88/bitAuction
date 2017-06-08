package kr.bit.auction.member.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
/**
 * 
 * @author 정의홍
 * @since 2017-05-22
 */
@WebServlet("/member/withdrawSerlvet")
public class MemberWithdrawSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SqlSession session;
	
	public MemberWithdrawSerlvet() {
	}

	@Override
	protected void service(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		
	}
	
	
}
