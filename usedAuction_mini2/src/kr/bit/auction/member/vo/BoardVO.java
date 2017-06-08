package kr.bit.auction.member.vo;

import java.util.Date;

public class BoardVO {
	private int ART_NO;
	private String TITLE;
	private String CONTENT;
	private String ART_HIGH_NO;
	private int MB_NO;
	private Date ART_MK_DATE;
	private String ART_DO_STATUS;
	private String RQST_TYPE;
	private String MB_ID;

	public String getMB_ID() {
		return MB_ID;
	}

	public void setMB_ID(String mB_ID) {
		MB_ID = mB_ID;
	}

	public int getART_NO() {
		return ART_NO;
	}

	public void setART_NO(int aRT_NO) {
		ART_NO = aRT_NO;
	}

	public String getTITLE() {
		return TITLE;
	}

	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}

	public String getCONTENT() {
		return CONTENT;
	}

	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}

	public String getART_HIGH_NO() {
		return ART_HIGH_NO;
	}

	public void setART_HIGH_NO(String aRT_HIGH_NO) {
		ART_HIGH_NO = aRT_HIGH_NO;
	}

	public int getMB_NO() {
		return MB_NO;
	}

	public void setMB_NO(int mB_NO) {
		MB_NO = mB_NO;
	}

	public Date getART_MK_DATE() {
		return ART_MK_DATE;
	}

	public void setART_MK_DATE(Date aRT_MK_DATE) {
		ART_MK_DATE = aRT_MK_DATE;
	}

	public String getART_DO_STATUS() {
		return ART_DO_STATUS;
	}

	public void setART_DO_STATUS(String aRT_DO_STATUS) {
		ART_DO_STATUS = aRT_DO_STATUS;
	}

	public String getRQST_TYPE() {
		return RQST_TYPE;
	}

	public void setRQST_TYPE(String rQST_TYPE) {
		RQST_TYPE = rQST_TYPE;
	}

}
