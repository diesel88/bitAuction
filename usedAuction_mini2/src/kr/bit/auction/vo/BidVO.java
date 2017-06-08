package kr.bit.auction.vo;

import java.util.Date;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
public class BidVO {
	private String mbId;
	private int bidNo;
	private int bidCnt;
	private int acNo;
	private int mbNo;
	public int getBidNo() {
		return bidNo;
	}
	public void setBidNo(int bidNo) {
		this.bidNo = bidNo;
	}
	public int getBidCnt() {
		return bidCnt;
	}
	public void setBidCnt(int bidCnt) {
		this.bidCnt = bidCnt;
	}
	public int getAcNo() {
		return acNo;
	}
	public void setAcNo(int acNo) {
		this.acNo = acNo;
	}
	public int getMbNo() {
		return mbNo;
	}
	public void setMbNo(int mbNo) {
		this.mbNo = mbNo;
	}
	private Date bidDate;
	private long bidPrice;
	private String sbidResult;
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	public Date getBidDate() {
		return bidDate;
	}
	public void setBidDate(Date bidDate) {
		this.bidDate = bidDate;
	}
	public long getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(long bidPrice) {
		this.bidPrice = bidPrice;
	}
	public String getSbidResult() {
		return sbidResult;
	}
	public void setSbidResult(String sbidResult) {
		this.sbidResult = sbidResult;
	}
	

}
