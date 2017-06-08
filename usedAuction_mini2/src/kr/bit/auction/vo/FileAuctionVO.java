package kr.bit.auction.vo;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
public class FileAuctionVO {
	private int acFileNo;
	private String acFileNm;
	private String acFilePath;
	private String acFileRlNm;
	private long acFileSize;
	private int acNo;
	private String acFileType;
	public int getAcFileNo() {
		return acFileNo;
	}
	public void setAcFileNo(int acFileNo) {
		this.acFileNo = acFileNo;
	}
	public String getAcFileNm() {
		return acFileNm;
	}
	public void setAcFileNm(String acFileNm) {
		this.acFileNm = acFileNm;
	}
	public String getAcFilePath() {
		return acFilePath;
	}
	public void setAcFilePath(String acFilePath) {
		this.acFilePath = acFilePath;
	}
	public String getAcFileRlNm() {
		return acFileRlNm;
	}
	public void setAcFileRlNm(String acFileRlNm) {
		this.acFileRlNm = acFileRlNm;
	}
	public long getAcFileSize() {
		return acFileSize;
	}
	public void setAcFileSize(long acFileSize) {
		this.acFileSize = acFileSize;
	}
	public int getAcNo() {
		return acNo;
	}
	public void setAcNo(int acNo) {
		this.acNo = acNo;
	}
	public String getAcFileType() {
		return acFileType;
	}
	public void setAcFileType(String acFileType) {
		this.acFileType = acFileType;
	}
	
}
