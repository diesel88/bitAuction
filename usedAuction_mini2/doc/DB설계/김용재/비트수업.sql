
drop table classify_code;
commit;
--1000 - 회원분류
--	1001 - 개인회원
--	1002 - 기업회원
--	1003 - 관리자회원

--1100 - 문의유형
--	1101 - 상품
--	1102 - 배송
--	1103 - 고객정보
--	1104 - 주문/결제
--	1105 - 취소
--	1106 - 반품

--1200 - QNA글처리상태
--	1201 - 답변완료
--	1202 - 답변중
--	1203 - 답변미완료

--	1300 - 관리자등급
--1301 - 수퍼관리자
--1302 - 중간관리자
--1303 - 말단관리자

--	1400 - 낙찰결과
--1401 - 낙찰
--1402 - 비낙찰

-- 1500 - 파일종류
--1501 - 메인이미지
--1502 - 작은이미지


-- 1600 - 입찰결과
--1601 - 입찰중
--1602 - 낙찰
--1603 - 입찰취소

insert into clss_code(classf_code, classf_nm)
values('1000','회원분류');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1001','개인회원','1000');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1002','기업회원','1000');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1003','관리자회원','1000');
insert into clss_code(classf_code, classf_nm)
values('1100','문의유형');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1101','상품','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1102','배송','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1103','고객정보','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1104','주문/결제','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1105','취소','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1106','반품','1100');
insert into clss_code(classf_code, classf_nm)
values('1200','QNA글처리상태');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1201','답변완료','1200');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1202','답변중','1200');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1203','답변미완료','1200');
insert into clss_code(classf_code, classf_nm)
values('1300','관리자등급');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1301','수퍼관리자','1300');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1302','중간관리자','1300');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1303','말단관리자','1300');
insert into clss_code(classf_code, classf_nm)
values('1400','낙찰결과');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1401','낙찰','1400');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1402','비낙찰','1400');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1403','진행중','1400');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1404','경매취소','1400');
insert into clss_code(classf_code, classf_nm)
values('1500','경매파일유형');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1501','메인이미지','1500');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1502','작은이미지','1500');
insert into clss_code(classf_code, classf_nm)
values('1600','입찰결과');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1601','입찰중','1600');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1602','낙찰','1600');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1603','입찰취소','1600');
commit;

select * from clss_code;

create table tb_member (
    id varchar2(20) primary key not null,
    pass varchar2(20),
    name varchar2(20)
    );
    commit;
insert into tb_member 
values('a','1','홍길동');
insert into tb_member 
values('b','2','홍길자');
insert into tb_member 
values('c','3','홍길순');

1000 - 전자제품
	1001 - TV
	1002 - 냉장고
	1003 - 세탁기
	1004 - 진공청소기
	1005 - DVD
	1006 - 에어컨
	1007 - 전기히터
	1008 - 카메라
	1009 - 핸드폰
	1010 - 태블릿
	1011 - 노트북
	1012 - PC
	1013 - 모니터
	1014 - 프린터
1100 - 의류
	1101 - 티셔츠
	1102 - 니트
	1103 - 청바지
	1104 - 원피스
	1105 - 치마
	1105 - 자켓/코트
	1106 - 점퍼/야상
	1107 - 조끼
	1108 - 정장
	1109 - 수영복
	1110 - 파티복
	1111 - 교복
1200 - 식품
	1201 - 쌀/과일/농수축산물
	1202 - 건강식품/다이어트
	1203 - 커피/음료
	1204 - 즉석/간식/가공식품
1300 - 기타
	1301 - 가구
	1302 - 주방용품
	1303 - 문구/사무용품
	1304 - 도서
	1305 - 티켓
	1306 - 쿠폰
	1307 - 자동차용품
    
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM)
values('1000','전자제품');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1001','TV','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1002','냉장고','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1003','세탁기','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1004','진공청소기','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1005','DVD','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1006','에어컨','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1007','전기히터','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1008','카메라','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1009','핸드폰','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1010','태블릿','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1011','노트북','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1012','PC','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1013','모니터','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1014','프린터','1000');

insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM)
values('1100','의류');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1101','티셔츠','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1102','니트','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1103','청바지','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1104','원피스','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1105','자켓/코트','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1106','점퍼/야상','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1107','조끼','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1108','정장','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1109','수영복','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1110','파티복','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1111','교복','1100');

insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM)
values('1200','식품');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1201','쌀/과일/농수축산물','1200');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1202','건강식품/다이어트','1200');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1203','커피/음료','1200');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1204','즉석/간식/가공식품','1200');


insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM)
values('1300','기타');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1301','가구','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1302','주방용품','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1303','문구/사무용품','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1304','도서','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1305','티켓','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1306','쿠폰','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1307','자동차용품','1300');
commit;

alter table product_category modify( pdt_type_nm varchar2(50));

--1-1. 이달의 최고경매 top3
select rownum, a.ac_no, d.ac_file_nm, d.ac_file_path
from auction a
inner join bid b
on a.ac_no = b.ac_no
inner join bid_success c
on b.bid_no = c.bid_no
inner join file_auction d
on a.ac_no = d.ac_no
where (c.sbid_date between last_day(add_months(sysdate,-1)) and last_day(sysdate)) 
 and d.ac_file_type='1501'
 and rownum <4
 order by bid_price desc;
 
 --1-2. 상품유형별 진행중인 경매목록
 select rownum,a.ac_no, c.ac_file_nm, c.ac_file_path, a.ac_nm, a.ac_start_price
 from auction a
 inner join product_category b
 on a.pdt_type_no = b.pdt_type_no
 inner join file_auction c
 on a.ac_no = c.ac_no
 where rownum < 5 
 and b.pdt_high_type_no = '1000'
 and c.ac_file_type = '1501'
 and a.ac_result = '1403'  -- 진행중
 order by ac_start_date desc;
 
 --1-3. 진행중인 경매 드롭다운 메뉴
 --1단계
 select * 
 from product_category
 where pdt_high_type_no is null
 order by pdt_type_no;
--2단계
select a.pdt_type_no, a.pdt_type_nm
from product_category a
inner join product_category b
on a.pdt_high_type_no = b.pdt_type_no
where a.pdt_high_type_no = '1000'
order by a.pdt_type_no;

--1-4 이달의 최고경매 드롭다운메뉴
-- 상동

--2 진행중인 경매
select a.ac_no, a.ac_start_price, c.ac_file_nm, c.ac_file_path
from auction a
inner join product_category b
on a.pdt_type_no = b.pdt_type_no
inner join file_auction c
on a.ac_no = c.ac_no
where a.pdt_type_no = '1001'
and a.ac_result = '1403' --진행중
and c.ac_file_type = '1501'
order by a.ac_start_date desc;

--3 이달의 최고경매
ALTER TABLE AUCTION ADD(AC_RESULT CHAR(4) NOT NULL);
ALTER TABLE AUCTION
	ADD
		CONSTRAINT FK_CLSS_CODE_TO_AUCTION
		FOREIGN KEY (
			AC_RESULT
		)
		REFERENCES CLSS_CODE (
			CLASSF_CODE
		);

select a.ac_no, c.ac_file_nm, c.ac_file_path, d.bid_price
from auction a
inner join product_category b
on a.pdt_type_no = b.pdt_type_no
inner join file_auction c
on a.ac_no = c.ac_no
inner join bid d
on a.ac_no = d.ac_no
inner join bid_success e
on d.bid_no = e.bid_no
where a.pdt_type_no = '1001'
and a.ac_result = '1401' --진행중
and c.ac_file_type = '1501'
order by a.ac_start_date desc;

--4 경매상세보기
--4-1 경매내용
select a.ac_start_date, a.ac_end_date, a.ac_nm, a.ac_content, a.ac_cnt, a.ac_start_price, b.bid_price, c.mb_id 
from auction a
inner join bid b
on a.ac_no = b.ac_no
inner join member_generic c
on a.mb_no = c.mb_no
where a.ac_no = 1   -- 여기에 경매번호
and rownum = 1
order by bid_price desc;
--4-2 경매파일 작은 이미지
select ac_file_nm, ac_file_path
from auction a
inner join file_auction b
on a.ac_no = b.ac_no
where b.ac_file_type = '1502'; --작은 이미지
--4-3 댓글
select b.comments_no, b.comments_content, b.comment_mk_date, c.mb_id
from auction a
inner join comments b
on a.ac_no = b.ac_no
inner join member_generic c
on a.mb_no = c.mb_no
where a.ac_no = 1  -- 여기에 경매번호
order by b.comments_no desc;

--5 이달의 최고경매 상세보기
--5-1 경매내용
select a.ac_start_date, a.ac_end_date, a.ac_nm, a.ac_content, a.ac_cnt, a.ac_start_price, b.bid_price, d.mb_id, e.mb_id 
from auction a
inner join bid b
on a.ac_no = b.ac_no
inner join bid_success c
on b.bid_no = c.bid_no
inner join member_generic d
on a.mb_no = d.mb_no
inner join member_generic e
on b.mb_no = e.mb_no
where a.ac_no=1;  -- 여기에 경매번호
--5-2 최고경매 파일
select ac_file_nm, ac_file_path
from auction a
inner join file_auction b
on a.ac_no = b.ac_no
where b.ac_file_type = '1502'; --작은 이미지
--5-3 최고경매 댓글
select b.comments_no, b.comments_content, b.comment_mk_date, c.mb_id
from auction a
inner join comments b
on a.ac_no = b.ac_no
inner join member_generic c
on a.mb_no = c.mb_no
where a.ac_no = 1  -- 여기에 경매번호
order by b.comments_no desc;

--6 경매기록
select c.mb_id, b.bid_date, b.bid_price, b.sbid_result
from auction a
inner join bid b
on a.ac_no = b.ac_no
inner join member_generic c
on c.mb_no = b.mb_no
where a.ac_no = 1  -- 여기에 경매번호
and b.sbid_result != '1603' -- 입찰취소
order by bid_date desc;

--7 입찰하기
--7-1 현재가 보여주기
select b.bid_price
from auction a
inner join bid b
on a.ac_no = b.ac_no
where rownum = 1
order by b.bid_price desc;
--7-2 입찰입력
insert into bid(bid_no, bid_price, bid_date, bid_cnt, ac_no, mb_no, sbid_result) 
values (s_bid_no.nextval,20000,sysdate,1,1,1,'1601'); --입찰중

--8 MyAuction
--8-1 입찰정보 보여주기
select b.bid_no, a.ac_nm, a.ac_end_date, b.sbid_result, b.bid_cnt,c.bid_price as current_price 
from auction a
inner join bid b
on a.ac_no = b.ac_no
inner join (select bid_price, ac_no
     from bid
        order by bid_price desc
      )  c 
on a.ac_no = c.ac_no
and rownum = 1
inner join member_generic d
on b.mb_no = d.mb_no
where d.mb_no = '1'  -- 여기에 회원번호
order by b.bid_no desc;

--9-4 판매정보 보여주기
select a.ac_nm, c.bid_price as current_price, a.ac_end_date, a.ac_cnt
from auction a
inner join member_generic b
on a.mb_no = b.mb_no
inner join (select bid_price, ac_no, sbid_result
     from bid
        order by bid_price desc
      )  c 
on a.ac_no = c.ac_no
and rownum = 1;

--10 경매등록
--경매내용 입력

insert into auction(
ac_no, ac_start_date, ac_end_date, ac_nm, ac_content, ac_cnt, ac_start_price, mb_no, pdt_type_no
) values (
s_auction_no.nextval, --경매번호
to_date('2017-05-23 13:50', 'yyyy-mm-dd hh24:mi'),  --시작시간
to_date('2017-05-25 13:50', 'yyyy-mm-dd hh24:mi'),  --마감시간
'아이폰5',
'제가 깨끗하게 1년간 사용한 아이폰입니다.',
1, --수량
50000, --시작가
1, --회원번호
'1009' --상품유형정보
);


-- 경매파일등록(메인이미지)
insert into file_auction(
ac_file_no, ac_file_nm, ac_file_path, ac_file_rl_nm, ac_file_size, ac_no, ac_file_type
) values (
s_file_auction_no.nextval, --파일번호
'asdfjsadjf_nsdla_ndasl.jpg', --파일이름
'/auction/2017/05/25/', --경로
'iphone.jpg', --실제이름
'12345', --파일크기
1, --경매번호
'1501' --파일유형
);

-- 경매파일등록(작은이미지)
insert into file_auction(
ac_file_no, ac_file_nm, ac_file_path, ac_file_rl_nm, ac_file_size, ac_no, ac_file_type
) values (
s_file_auction_no.nextval, --파일번호
'asdfjsadjf_nsdla_ndasl.jpg', --파일이름
'/auction/2017/05/25/', --경로
'iphone.jpg', --실제이름
'12345', --파일크기
1, --경매번호
'1502' --파일유형
);

alter table clss_code rename to cls_code;

commit;

select * from member_generic;

select * from member_prv;

CREATE OR REPLACE PROCEDURE reset_seq(
                p_seq_name IN VARCHAR2 )
IS
        l_val NUMBER;
BEGIN
        EXECUTE immediate 'select ' || p_seq_name || '.nextval from dual' INTO l_val;
        EXECUTE immediate 'alter sequence ' || p_seq_name || ' increment by -' || l_val || ' minvalue 0';
        EXECUTE immediate 'select ' || p_seq_name || '.nextval from dual' INTO l_val;
        EXECUTE immediate 'alter sequence ' || p_seq_name || ' increment by 1 minvalue 0';
END;

execute reset_seq('s_comment_no');
select s_member_generic_no.currval from dual;

delete member_prv;
delete member_generic;
commit;


select * from auction;
select * from file_auction;

select * from auction;
select * from member_generic;
--1601 - 입찰중
--1602 - 낙찰
--1603 - 입찰취소
insert into bid (
    bid_no, bid_price, bid_date, bid_cnt, ac_no, mb_no, sbid_result
    ) values (
        s_bid_no.nextval, 
        (select ac_start_price + 1000 from auction where ac_no = 2),
        (select ac_start_date + 1 from auction where ac_no = 2),
        1,
        2,
        1, 
        '1602'
    );
    select * from auction;
    select * from bid;
    delete bid;
    
    update bid set sbid_result = '1602' where bid_no=10;
    update bid set sbid_result = '1602' where bid_no=20;
    update bid set sbid_result = '1602' where bid_no=30;
    update bid set sbid_result = '1602' where bid_no=40;
    update bid set sbid_result = '1602' where bid_no=50;
    update bid set sbid_result = '1602' where bid_no=60;
    update bid set sbid_result = '1602' where bid_no=70;
    update bid set sbid_result = '1602' where bid_no=80;
    update bid set sbid_result = '1602' where bid_no=90;
    update bid set sbid_result = '1602' where bid_no=100;
    update bid set sbid_result = '1602' where bid_no=110;
    update bid set sbid_result = '1602' where bid_no=120;
    update bid set sbid_result = '1602' where bid_no=130;
    update bid set sbid_result = '1602' where bid_no=140;
    update bid set sbid_result = '1602' where bid_no=150;
    update bid set sbid_result = '1602' where bid_no=160;
    update bid set sbid_result = '1602' where bid_no=170;
    update bid set sbid_result = '1602' where bid_no=180;
    update bid set sbid_result = '1602' where bid_no=190;
    
    -- 낙찰된 입찰행만 낙찰테이블에 넣기
    insert into bid_success(sbid_no, sbid_date, bid_no)
    select s_bid_success_no.nextval, bid_date, bid_no from bid where sbid_result='1602';
    
    select * from bid_success;
    select * from member_generic;
    select * from comments;
    delete comments;
    commit;