package kr.bit.auction;

import org.apache.ibatis.session.SqlSession;

import common.db.MyAppSqlConfig;
import kr.bit.auction.mapper.AuctionMapper;
import kr.bit.auction.member.util.BringSqlSession;

public class UpdateDBThread extends Thread{
	SqlSession session = null;
	AuctionMapper mapper = null;
	boolean bContinue = true;
	public UpdateDBThread() {
		System.out.println("생성자");
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper =session.getMapper(AuctionMapper.class);
	}
	public void stopService() {
		bContinue = false;
	}
	@Override
	public void run() {
		System.out.println("run");
		while(bContinue) {
		try {
			int cnt1 = mapper.updateBatBid();
			int cnt2 = mapper.updateBatAuction();
			System.out.println("스레드: " +cnt1 + "행 bid 업데이트");
			System.out.println("스레드: " +cnt2 + "행 auction 업데이트");
			Thread.sleep(1000 * 60);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		}
	}

}
