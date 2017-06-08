package kr.bit.auction.vo;

import java.util.Date;
import java.util.List;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
public class AuctionVO {
	private int acNo;
	private Date acStartDate;
	private Date acEndDate;
	private String acNm;
	private String acContent;
	private String acCnt;
	private long acStartPrice;
	private int mbNo;
	private String pdtTypeNo;
	private String acResult;
	private long currentPrice;
	private String mbId;
	
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	public long getCurrentPrice() {
		return currentPrice;
	}
	public void setCurrentPrice(long currentPrice) {
		this.currentPrice = currentPrice;
	}
	private List<FileAuctionVO> files;
	public String getAcResult() {
		return acResult;
	}
	public void setAcResult(String acResult) {
		this.acResult = acResult;
	}
	public List<FileAuctionVO> getFiles() {
		return files;
	}
	public void setFiles(List<FileAuctionVO> files) {
		this.files = files;
	}
	public int getAcNo() {
		return acNo;
	}
	public void setAcNo(int acNo) {
		this.acNo = acNo;
	}
	public Date getAcStartDate() {
		return acStartDate;
	}
	public void setAcStartDate(Date acStartDate) {
		this.acStartDate = acStartDate;
	}
	public Date getAcEndDate() {
		return acEndDate;
	}
	public void setAcEndDate(Date acEndDate) {
		this.acEndDate = acEndDate;
	}
	public String getAcNm() {
		return acNm;
	}
	public void setAcNm(String acNm) {
		this.acNm = acNm;
	}
	public String getAcContent() {
		return acContent;
	}
	public void setAcContent(String acContent) {
		this.acContent = acContent;
	}
	public String getAcCnt() {
		return acCnt;
	}
	public void setAcCnt(String acCnt) {
		this.acCnt = acCnt;
	}
	public long getAcStartPrice() {
		return acStartPrice;
	}
	public void setAcStartPrice(long acStartPrice) {
		this.acStartPrice = acStartPrice;
	}
	public int getMbNo() {
		return mbNo;
	}
	public void setMbNo(int mb_no) {
		this.mbNo = mb_no;
	}
	public String getPdtTypeNo() {
		return pdtTypeNo;
	}
	public void setPdtTypeNo(String pdtTypeNo) {
		this.pdtTypeNo = pdtTypeNo;
	}
		
}
