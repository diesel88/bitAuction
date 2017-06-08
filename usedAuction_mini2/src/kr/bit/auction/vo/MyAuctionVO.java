package kr.bit.auction.vo;

import java.util.Date;

public class MyAuctionVO {
	private int acNo;
	private String acNm;
	private long acStartPrice;
	private long currentPrice;
	private String mbId;
	private String acResult;
	private String sbidResult;
	private Date acEndDate;
	private int bidCnt;
	
	public String getAcResult() {
		return acResult;
	}
	public void setAcResult(String acResult) {
		this.acResult = acResult;
	}
	public int getAcNo() {
		return acNo;
	}
	public void setAcNo(int acNo) {
		this.acNo = acNo;
	}
	public String getAcNm() {
		return acNm;
	}
	public void setAcNm(String acNm) {
		this.acNm = acNm;
	}
	public long getAcStartPrice() {
		return acStartPrice;
	}
	public void setAcStartPrice(long acStartPrice) {
		this.acStartPrice = acStartPrice;
	}
	public long getCurrentPrice() {
		return currentPrice;
	}
	public void setCurrentPrice(long currentPrice) {
		this.currentPrice = currentPrice;
	}
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	public String getSbidResult() {
		return sbidResult;
	}
	public void setSbidResult(String sbidResult) {
		this.sbidResult = sbidResult;
	}
	public Date getAcEndDate() {
		return acEndDate;
	}
	public void setAcEndDate(Date acEndDate) {
		this.acEndDate = acEndDate;
	}
	public int getBidCnt() {
		return bidCnt;
	}
	public void setBidCnt(int bidCnt) {
		this.bidCnt = bidCnt;
	}
	
}
