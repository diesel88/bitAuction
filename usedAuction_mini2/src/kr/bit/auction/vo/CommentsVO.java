package kr.bit.auction.vo;

import java.util.Date;

/**
 * 
 * @author 김용재
 * @since 2017-05-24
 *
 */
public class CommentsVO {
	int commentsNo;
	String commentsContent;
	Date commentMkDate;
	int commentsHighNo;
	int acNo;
	int mbNo;
	String mbId;
	public int getCommentsNo() {
		return commentsNo;
	}
	public void setCommentsNo(int commentsNo) {
		this.commentsNo = commentsNo;
	}
	public String getCommentsContent() {
		return commentsContent;
	}
	public void setCommentsContent(String commentsContent) {
		this.commentsContent = commentsContent;
	}
	public Date getCommentMkDate() {
		return commentMkDate;
	}
	public void setCommentMkDate(Date commentMkDate) {
		this.commentMkDate = commentMkDate;
	}
	public int getCommentsHighNo() {
		return commentsHighNo;
	}
	public void setCommentsHighNo(int commentsHighNo) {
		this.commentsHighNo = commentsHighNo;
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
	public String getMbId() {
		return mbId;
	}
	public void setMbId(String mbId) {
		this.mbId = mbId;
	}
	
	
}
