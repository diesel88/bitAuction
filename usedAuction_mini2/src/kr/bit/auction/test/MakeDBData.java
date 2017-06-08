package kr.bit.auction.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Random;
import java.util.UUID;

public class MakeDBData {
	static Connection con;
	static PreparedStatement pstmt;
	public static int insertMemberGeneric() throws SQLException {
		int cnt = 0;
		for ( int i=101; i < 200; i++) {
			String sql = "insert into member_generic("
					+ "mb_no, mb_id, mb_pw, mb_nm, mb_email, mb_sex, mb_drop_status, zip, addr, dtl_addr, mb_type"
					+ ")values( "
					+ "s_member_generic_no.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?"
					+ ")";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "human"+i);
			pstmt.setString(2, "test"+i);
			pstmt.setString(3, "홍길동"+i);
			pstmt.setString(4, "human"+i+"@naver.com");
			pstmt.setString(5, (i%2==0)?"W":"M");
			pstmt.setString(6, "N");
			pstmt.setString(7, "111111");
			pstmt.setString(8, "서울 강서구");
			pstmt.setString(9, "화곡동 "+i);
			pstmt.setString(10, "1002");
			cnt += pstmt.executeUpdate();
		}
		return cnt;
	}
	
	public static int insertMemberPrv() throws SQLException {
		int cnt = 0;
		for ( int i=1; i < 101; i++) {
			String sql = "insert into member_prv("
					+ "prv_mb_no, social_reg_no, mb_no"
					+ ")values( "
					+ "s_member_prv_no.nextval, ?, ?"
					+ ")";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "7610141045277");
			pstmt.setInt(2, i);
			cnt += pstmt.executeUpdate();
		}
		return cnt;
	}
	public static int insertMemberCorp() throws SQLException {
		int cnt = 0;
		for ( int i=101; i < 201; i++) {
			String sql = "insert into member_corp("
					+ "corp_mb_no, corp_reg_no, corp_nm, corp_boss_nm, mb_no"
					+ ")values( "
					+ "s_member_corp_no.nextval, ?, ?, ?, ?"
					+ ")";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "2014567890");
			pstmt.setString(2, "회사"+i);
			pstmt.setString(3, "사장"+i);
			pstmt.setInt(4, i);
			cnt += pstmt.executeUpdate();
		}
		return cnt;
	}
	
	public static int insertAuction() throws SQLException, ParseException {
		String[] codes = { "1001", "1002", "1003", "1004", "1005", "1006", "1007", "1008", "1009", "1010", "1011", "1012", "1013", "1014",
				 "1101", "1102", "1103", "1104", "1105", "1106", "1107", "1108", "1109", "1110", "1111",
				 "1201", "1202", "1203", "1204",
				 "1301", "1302", "1303", "1304", "1305", "1306", "1307"
		};
		String[] s1 = {"2017-05-27", "2017-05-28", "2017-05-29", "2017-05-30", "2017-05-31", "2017-06-01","2017-06-02", "2017-06-03", "2017-06-04", "2017-06-05"}; 
		String[] s2 = {"2017-05-29", "2017-05-30", "2017-05-31", "2017-06-01","2017-06-02", "2017-06-03", "2017-06-04", "2017-06-05", "2017-06-06", "2017-06-07"};
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		/*
		 * -- 1600 - 입찰결과
--1601 - 입찰중
--1602 - 낙찰
--1603 - 입찰취소
		 */
		int cnt = 0;
		Random r = new Random();
		for ( int i=1; i < 99; i++) {
			String sql = "insert into auction("
					+ "ac_no, ac_start_date, ac_end_date, ac_nm, ac_content, ac_cnt, ac_start_price, mb_no, pdt_type_no, ac_result"
					+ ")values( "
					+ "s_auction_no.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?"
					+ ")";
			pstmt = con.prepareStatement(sql);
			int idx = i/10;
			String s_date1 = String.format("%s %02d:%02d", s1[idx], r.nextInt(24), r.nextInt(60) );
			String s_date2 = String.format("%s %02d:%02d", s2[idx], r.nextInt(24), r.nextInt(60) );
			pstmt.setDate(1, new java.sql.Date(sdf.parse(s_date1).getTime()));
			pstmt.setDate(2, new java.sql.Date(sdf.parse(s_date2).getTime()));
			pstmt.setString(3, "제품"+i);
			pstmt.setString(4, "안녕하세요 제가 아끼던 제품입니다.\n외관은 깨끗한 상태이고요\n저렴한 가격에 판매합니다."+i);
			pstmt.setInt(5, r.nextInt(3)+1);
			pstmt.setLong(6, r.nextInt(100)*1000);
			pstmt.setInt(7, i);
			pstmt.setString(8, codes[r.nextInt(36)]);
			pstmt.setString(9, (idx==0)?"1602":"1601");
			cnt += pstmt.executeUpdate();
		}
		return cnt;
	}
	
	public static int insertFileAuction() throws SQLException {
		int cnt = 0;
		Random r = new Random();
		String[] codes = {"1501", "1502", "1502"};
		for ( int i=2; i < 100; i++) {
			for( int j=0; j < 3; j++) {
				String sql = "insert into file_auction("
						+ "ac_file_no, ac_file_nm, ac_file_path, ac_file_rl_nm, ac_file_size, ac_no, ac_file_type"
						+ ")values( "
						+ "s_file_auction_no.nextval, ?, ?, ?, ?, ?, ?"
						+ ")";

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, UUID.randomUUID().toString()+".jpg");
				pstmt.setString(2, "/2017/05/30/");
				pstmt.setString(3, "파일"+i+j);
				pstmt.setInt(4, r.nextInt(10000000));
				pstmt.setInt(5, i);
				pstmt.setString(6, codes[j]);
				cnt += pstmt.executeUpdate();
			}
		}
		return cnt;
	}
	
	public static int insertBid() throws SQLException {
//		--1601 - 입찰중
//		--1602 - 낙찰
//		--1603 - 입찰취소
		
		int cnt = 0;
		int k=0;
		for ( int i=2; i < 100; i++) {
			for( int j=100 +10*k; j < 110 + 10*k; j++) {
				String sql = "insert into bid ("
								+"bid_no, bid_price, bid_date, bid_cnt, ac_no, mb_no, sbid_result"
								+") values ("
								+"s_bid_no.nextval, "
								+"(select ac_start_price + "+j*10+" from auction where ac_no = ?),"
								+"(select ac_start_date + 1 from auction where ac_no = ?),"
								+"1," //bid_cnt
								+"?,"	//ac_no
								+"?, "	//mb_no
								+"?"	//sbid_result
								+")";
						
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, i);
				pstmt.setInt(2, i);
				pstmt.setInt(3, i);
				pstmt.setInt(4, j);
				String code="1601"; 
				
				pstmt.setString(5, code);
				cnt += pstmt.executeUpdate();
				pstmt.close();
			}
			if(k<9)k++;
			
			
		}
		return cnt;
	}
	
	public static int insertComments() throws SQLException, ParseException {
		String[] s2 = {"2017-05-29", "2017-05-30", "2017-05-31", "2017-06-01","2017-06-02", "2017-06-03", "2017-06-04", "2017-06-05", "2017-06-06", "2017-06-07"};
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		int cnt = 0;
		String[] contents = {"정말 싸네요.", "기스가 많이 난 것 같아요.", "이거 더 싸게는 안되나요?", "정말 멋진 상품이네요~", "어디서 많이 본 듯한.."};
		Random r = new Random();
		String[] codes = {"1501", "1502", "1502"};
		for ( int i=2; i < 100; i++) {
			for( int j=0; j < 3; j++) {
				String sql = "insert into comments("
						+ "comments_no, comments_content, comment_mk_date, ac_no, mb_no"
						+ ")values( "
						+ "s_comment_no.nextval, ?, ?, ?, ?"
						+ ")";

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, contents[r.nextInt(5)]);
				String s_date2 = String.format("%s %02d:%02d:%02d", s2[r.nextInt(10)], r.nextInt(24), r.nextInt(60), r.nextInt(60) );
				pstmt.setDate(2, new java.sql.Date(sdf.parse(s_date2).getTime()));
				pstmt.setInt(3, i);
				
				pstmt.setInt(4, r.nextInt(200)+2);
				
				cnt += pstmt.executeUpdate();
				pstmt.close();
			}
		}
		return cnt;
	}
	
	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			int cnt = insertMemberGeneric();
//			int cnt = insertMemberPrv();
//			int cnt = insertMemberCorp();
//			int cnt = insertAuction();
//			int cnt = insertFileAuction();
//			int cnt = insertBid();
//			int cnt = insertComments();
			System.out.println(cnt+"개의 행이 추가되었습니다.");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
