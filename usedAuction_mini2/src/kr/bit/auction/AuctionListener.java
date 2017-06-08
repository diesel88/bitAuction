package kr.bit.auction;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.ibatis.session.SqlSession;

import common.db.MyAppSqlConfig;
import kr.bit.auction.mapper.AuctionMapper;
import kr.bit.auction.member.vo.MemberGenericVO;
import kr.bit.auction.vo.ProductCategoryVO;

public class AuctionListener implements ServletContextListener {
	
	SqlSession session = null; 
	AuctionMapper mapper = null;
	UpdateDBThread thread = null;
	public AuctionListener() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
		
	}
	@Override
	public void contextDestroyed(ServletContextEvent contextEvent) {
		// TODO Auto-generated method stub
		thread.stopService();
		System.out.println("리스너 종료");
	}

	@Override
	public void contextInitialized(ServletContextEvent contextEvent) {
		// TODO Auto-generated method stub
		System.out.println("리스너 시작");
		ServletContext context = contextEvent.getServletContext();

		
		try {
			List<ProductCategoryVO> product = mapper.selectProductCategory();
			context.setAttribute("product", product);
			thread = new UpdateDBThread();
			thread.start();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
