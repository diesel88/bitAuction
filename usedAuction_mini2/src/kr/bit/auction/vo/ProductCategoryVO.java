package kr.bit.auction.vo;

import java.util.List;

public class ProductCategoryVO {
	private String pdtTypeNo;
	private String pdtTypeNm;
	private List<ProductCategoryVO> products;
	public String getPdtTypeNo() {
		return pdtTypeNo;
	}
	public void setPdtTypeNo(String pdtTypeNo) {
		this.pdtTypeNo = pdtTypeNo;
	}
	public String getPdtTypeNm() {
		return pdtTypeNm;
	}
	public void setPdtTypeNm(String pdtTypeNm) {
		this.pdtTypeNm = pdtTypeNm;
	}
	public List<ProductCategoryVO> getProducts() {
		return products;
	}
	public void setProducts(List<ProductCategoryVO> products) {
		this.products = products;
	}
}
