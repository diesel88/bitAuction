package kr.bit.auction.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.bit.auction.member.vo.MemberGenericVO;

public class TestAuthFilter implements Filter {
	boolean bLogin = true;
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		if(bLogin){
			MemberGenericVO user = new MemberGenericVO();
			user.setMbId("human23");
			user.setMbNo(23);
			session.setAttribute("user", user);
		}
		chain.doFilter(req, response);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
}
