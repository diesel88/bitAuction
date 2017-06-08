package kr.bit.auction.servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.oreilly.servlet.MultipartRequest;

import common.db.BitFileRenamePolicy;
import common.db.MyAppSqlConfig;
import kr.bit.auction.constants.Code;
import kr.bit.auction.mapper.AuctionMapper;
import kr.bit.auction.member.vo.MemberGenericVO;
import kr.bit.auction.vo.AuctionVO;
import kr.bit.auction.vo.FileAuctionVO;

@WebServlet("/auction/productRegister.do")
public class ProductRegisterServlet extends HttpServlet{

	SqlSession session = null;
	AuctionMapper mapper = null;
	
	public ProductRegisterServlet() {
		session = MyAppSqlConfig.getSqlSessionInstance();
		mapper = session.getMapper(AuctionMapper.class);
	}
	
	MultipartRequest uploadFile(HttpServletRequest request, List<FileAuctionVO> fileList) throws IOException {
		ServletContext context = request.getServletContext();
		String uploadPath = context.getRealPath("/upload");
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/");
		String datePath = sdf.format(new Date());
		
		uploadPath += datePath;
		
		File f = new File(uploadPath);
		if(!f.exists()) {
			f.mkdirs();
		}
		MultipartRequest multi = new MultipartRequest(request, uploadPath, 1024 * 1024 * 10, "utf-8", new BitFileRenamePolicy());
		
		Enumeration<String> fNames = multi.getFileNames();
		String[] codes = { "1501", "1502" };
		while (fNames.hasMoreElements()) {
			String fileName = fNames.nextElement();
			File file = multi.getFile(fileName);
			int i = 0;
			if (file != null) {
				long size = file.length();
				
				String orgName = multi.getOriginalFileName(fileName);
				String systemName = multi.getFilesystemName(fileName);
				FileAuctionVO vo = new FileAuctionVO();
				vo.setAcFileNm(systemName);
				vo.setAcFileRlNm(orgName);
				vo.setAcFileSize(size);
				vo.setAcFilePath(datePath);
				vo.setAcFileType(codes[i]);
				i++;
				fileList.add(vo);
			}
		}
		return multi;
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<FileAuctionVO> fileList = new ArrayList<>(); 
		MultipartRequest multi = uploadFile(request, fileList);
		
		AuctionVO auction = new AuctionVO();
		
		MemberGenericVO user = (MemberGenericVO)request.getSession().getAttribute("user");
		auction.setMbNo(user.getMbNo());
		
		auction.setAcNm(multi.getParameter("acNm"));
		auction.setAcContent(multi.getParameter("acContent"));
		auction.setAcStartPrice(Long.parseLong(multi.getParameter("acStartPrice")));
		auction.setAcCnt(multi.getParameter("acCnt"));
		auction.setPdtTypeNo(multi.getParameter("pdtTypeNo"));
		String startYear = multi.getParameter("startYear");
		String startHour = multi.getParameter("startHour");
		String endYear = multi.getParameter("endYear");
		String endtHour = multi.getParameter("endHour");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
		String startDate = startYear+" "+startHour;
		String endDate = startYear+" "+startHour;
		try {
			auction.setAcStartDate(sdf.parse(startDate));
			auction.setAcEndDate(sdf.parse(endDate));
			Date now = new Date();
			String acResult = Code.BIDS_RESULT_BEFORE_CD.getKey();
			if ( now.getTime() > auction.getAcStartDate().getTime()) {
				acResult = Code.BIDS_RESULT_ING_CD.getKey();
			}
			auction.setAcResult(acResult);
			mapper.insertAuction(auction);
			for ( FileAuctionVO file : fileList) {
				file.setAcNo(auction.getAcNo());
				mapper.insertFileAuction(file);
			}
			session.commit();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("myAuction.do");
		rd.forward(request, response);
		
		
	}
	
}
