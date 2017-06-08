package kr.bit.auction.constants;

public enum ProductCode {
//	1000 - 전자제품
//	1001 - TV
//	1002 - 냉장고
//	1003 - 세탁기
//	1004 - 진공청소기
//	1005 - DVD
//	1006 - 에어컨
//	1007 - 전기히터
//	1008 - 카메라
//	1009 - 핸드폰
//	1010 - 태블릿
//	1011 - 노트북
//	1012 - PC
//	1013 - 모니터
//	1014 - 프린터
	ELECTRONICS_CD("1000","전자제품"),
	TV_CD("1001","TV"),
	REFRIGERATOR_CD("1002","냉장고"),
	WASHER_CD("1003","세탁기"),
	VACUUM_CD("1004","진공청소기"),
	DVD_CD("1005","DVD"),
	AIRCON_CD("1006","에어컨"),
	HEATER_CD("1007","전기히터"),
	CAMERA_CD("1008","카메라"),
	CELLPHONE_CD("1009","핸드폰"),
	TABLET_CD("1010","태블릿"),
	LAPTOP_CD("1011","노트북"),
	PC_CD("1012","PC"),
	MONITOR_CD("1013","모니터"),
	PRINTER_CD("1014","프린터"),
//1100 - 의류
//	1101 - 티셔츠
//	1102 - 니트
//	1103 - 청바지
//	1104 - 원피스
//	1105 - 치마
//	1105 - 자켓/코트
//	1106 - 점퍼/야상
//	1107 - 조끼
//	1108 - 정장
//	1109 - 수영복
//	1110 - 파티복
//	1111 - 교복
	CLOTHES_CD("1100","의류"),
	TSHIRT_CD("1101","티셔츠"),
	KNIT_CD("1102","니트"),
	JEANS_CD("1103","청바지"),
	ONEPIECE_CD("1104","원피스"),
	SKIRT_CD("1105","치마"),
	JACKET_CD("1106","자켓/코트"),
	JUMPER_CD("1107","점퍼/야상"),
	VEST_CD("1108","조끼"),
	SUIT_CD("1109","정장"),
	SWIMSUIT_CD("1110","수영복"),
	PARTYWEAR_CD("1111","파티복"),
	SCHOOLUNIFORM_CD("1112","교복"),
//1200 - 식품
//	1201 - 쌀/과일/농수축산물
//	1202 - 건강식품/다이어트
//	1203 - 커피/음료
//	1204 - 즉석/간식/가공식품
	FOOD_CD("1200","식품"),
	FARMER_CD("1201","쌀/과일/농수축산물"),
	HEALTHFOOD_CD("1202","건강식품/다이어트"),
	DRINKS_CD("1203","커피/음료"),
	INSTANCE_CD("1204","즉석/간식/가공식품"),
//1300 - 기타
//	1301 - 가구
//	1302 - 주방용품
//	1303 - 문구/사무용품
//	1304 - 도서
//	1305 - 티켓
//	1306 - 쿠폰
//	1307 - 자동차용품
	ETC_CD("1300","기타"),
	FURNITURE_CD("1301","가구"),
	KITCHEN_CD("1302","주방용품"),
	OFFICE_CD("1303","문구/사무용품"),
	BOOKS_CD("1304","도서"),
	TICKET_CD("1305","티켓"),
	COUPON_CD("1306","쿠폰"),
	CAR_CD("1306","자동차용품");
	
	private String key;
	private String value;
	
	private ProductCode(String key, String value) {
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
