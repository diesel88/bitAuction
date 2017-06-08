package kr.bit.auction.vo;

public class SelectMenuVO {
	private String selectType;
	private String pdtTypeNo;
	private int acNo;
	public int getAcNo() {
		return acNo;
	}
	public void setAcNo(int acNo) {
		this.acNo = acNo;
	}
	public String getSelectType() {
		return selectType;
	}
	public void setSelectType(String selectType) {
		this.selectType = selectType;
	}
	public String getPdtTypeNo() {
		return pdtTypeNo;
	}
	public void setPdtTypeNo(String pdtTypeNo) {
		this.pdtTypeNo = pdtTypeNo;
	}
}
