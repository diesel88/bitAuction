package kr.bit.auction.constants;

public enum Code {
	//1000 - 회원분류
	//  1001 - 개인회원
	//  1002 - 기업회원
	//  1003 - 관리자회원
	
	MEMBER_CD ("1000", "회원분류"),
	MEMBER_PRV_CD ("1001", "개인회원"),
	MEMBER_CORP_CD ("1002", "기업회원"),
	MEMBER_MNG_CD ("1003", "관리자회원"),
	
	
	//1100 - 문의유형
	//	1101 - 상품
	//	1102 - 배송
	//	1103 - 고객정보
	//	1104 - 주문/결제
	//	1105 - 취소
	//	1106 - 반품
	
	QNA_CD ("1100", "문의유형"),
	QNA_PROD_CD ("1101", "상품"),
	QNA_DELI_CD ("1102", "배송"),
	QNA_USER_CD ("1103", "고객정보"),
	QNA_PAY_CD ("1104", "주문/결제"),
	QNA_CANCEL_CD ("1105", "취소"),
	QNA_REJECT_CD ("1106", "반품"),
	
//	--1200 - QNA글처리상태
//	--	1201 - 답변완료
//	--	1202 - 답변중
//	--	1203 - 답변미완료
	QNA_STATUS_CD ("1200", "QNA글처리상태"),
	QNA_STATUS_COMPLETE_CD ("1201", "답변완료"),
	QNA_STATUS_ING_CD ("1202", "답변중"),
	QNA_STATUS_NO_CD ("1203", "답변미완료"),
	
//	--	1300 - 관리자등급
//	--1301 - 수퍼관리자
//	--1302 - 중간관리자
//	--1303 - 말단관리자
	MNG_LEVEL_CD ("1300", "관리자등급"),
	MNG_LEVEL_SUPER_CD ("1301", "수퍼관리자"),
	MNG_LEVEL_MIDDLE_CD ("1302", "중간관리자"),
	MNG_LEVEL_LOW_CD ("1303", "말단관리자"),
//	--	1400 - 낙찰결과
//	--1401 - 낙찰
//	--1402 - 비낙찰
//	--1403 - 진행중
//	--1404 - 경매취소
//	--1405 - 경매전
	BIDS_RESULT_CD ("1400", "낙찰결과"),
	BIDS_RESULT_SUCCESS_CD ("1401", "낙찰"),
	BIDS_RESULT_FAIL_CD ("1402", "비낙찰"),
	BIDS_RESULT_ING_CD ("1403", "진행중"),
	BIDS_RESULT_CANCEL_CD ("1404", "경매취소"),
	BIDS_RESULT_BEFORE_CD ("1405", "경매전"),
//	-- 1500 - 파일종류
//	--1501 - 메인이미지
//	--1502 - 작은이미지
	FILE_TYPE_CD ("1500", "파일종류"),
	FILE_TYPE_MAIN_CD ("1501", "메인이미지"),
	FILE_TYPE_SMALL_CD ("1502", "작은이미지"),
//	--1600 - 입찰결과
//	--1601 - 입찰중
//	--1602 - 낙찰
//	--1603 - 입찰취소
//	--1604 - 입찰전
	BID_RESULT_CD ("1600", "낙찰결과"),
	BID_RESULT_ING_CD ("1601", "비낙찰"),
	BID_RESULT_SUCCESS_CD ("1602", "낙찰"),
	BID_RESULT_CANCEL_CD ("1603", "입찰취소"),
	BID_RESULT_BEFORE_CD ("1603", "입찰취소");
	
	
	private String key;
	private String value;
	
	private Code(String key, String value) {
		this.key = key;
		this.value = value;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}
	
	
}
