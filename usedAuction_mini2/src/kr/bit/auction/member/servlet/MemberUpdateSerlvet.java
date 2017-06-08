package kr.bit.auction.member.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import common.db.MyAppSqlConfig;
import kr.bit.auction.mapper.MemberMapper;
/**
 * 
 * @author 정의홍
 * @since 2017-05-22
 */
@WebServlet("/member/update.do")
public class MemberUpdateSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SqlSession session;
	private MemberMapper mapper;
	
	public MemberUpdateSerlvet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		this.mapper = session.getMapper(MemberMapper.class);
	}

	@Override
	protected void service(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		
		
	}
	
	
}
