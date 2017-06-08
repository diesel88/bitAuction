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
import kr.bit.auction.member.vo.MemberGenericVO;
/**
 * 
 * @author 정의홍
 * @since 2017-05-22
 */
@WebServlet("/member/join.do")
public class MemberJoinSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private SqlSession session;
	private MemberMapper mapper;
	
	public MemberJoinSerlvet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(MemberMapper.class);
	}

	@Override
	protected void service(
			HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		MemberGenericVO memberGenericVO = new MemberGenericVO();
		
		memberGenericVO.setMbType(Integer.parseInt(request.getParameter("mbType")));
		memberGenericVO.setMbId(request.getParameter("mbId"));
		memberGenericVO.setMbPw(request.getParameter("mbPw"));
		memberGenericVO.setMbNm(request.getParameter("mbNm"));
		memberGenericVO.setMbEmail(request.getParameter("mbEmail"));
		memberGenericVO.setMbSex(request.getParameter("mbSex"));
		memberGenericVO.setZip(request.getParameter("zip"));
		memberGenericVO.setAddr(request.getParameter("addr"));
		memberGenericVO.setDtlAddr(request.getParameter("dtlAddr"));
		
		
	}
}
    








