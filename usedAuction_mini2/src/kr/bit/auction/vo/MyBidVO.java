package kr.bit.auction.vo;

import java.util.Date;

public class MyBidVO {
	private int bidNo;
	private String acNm;
	private Date acEndDate;
	private String sbidResult;
	private int bidCnt;
	private long bidPrice;
	private long currentPrice;
	public int getBidNo() {
		return bidNo;
	}
	public void setBidNo(int bidNo) {
		this.bidNo = bidNo;
	}
	public String getAcNm() {
		return acNm;
	}
	public void setAcNm(String acNm) {
		this.acNm = acNm;
	}
	public Date getAcEndDate() {
		return acEndDate;
	}
	public void setAcEndDate(Date acEndDate) {
		this.acEndDate = acEndDate;
	}
	public String getSbidResult() {
		return sbidResult;
	}
	public void setSbidResult(String sbid_result) {
		this.sbidResult = sbid_result;
	}
	public int getBidCnt() {
		return bidCnt;
	}
	public void setBidCnt(int bidCnt) {
		this.bidCnt = bidCnt;
	}
	public long getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(long bidPrice) {
		this.bidPrice = bidPrice;
	}
	public long getCurrentPrice() {
		return currentPrice;
	}
	public void setCurrentPrice(long currentPrice) {
		this.currentPrice = currentPrice;
	}
}
