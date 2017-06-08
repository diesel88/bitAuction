package kr.bit.auction.member.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
@WebServlet("/member/joinform.do")
public class MemberJoinFormSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)  
					throws ServletException, IOException {
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/member/joinForm.jsp");
			rd.forward(request, response);
	}
	
	
}
