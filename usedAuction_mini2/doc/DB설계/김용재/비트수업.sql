
drop table classify_code;
commit;
--1000 - ȸ���з�
--	1001 - ����ȸ��
--	1002 - ���ȸ��
--	1003 - ������ȸ��

--1100 - ��������
--	1101 - ��ǰ
--	1102 - ���
--	1103 - ������
--	1104 - �ֹ�/����
--	1105 - ���
--	1106 - ��ǰ

--1200 - QNA��ó������
--	1201 - �亯�Ϸ�
--	1202 - �亯��
--	1203 - �亯�̿Ϸ�

--	1300 - �����ڵ��
--1301 - ���۰�����
--1302 - �߰�������
--1303 - ���ܰ�����

--	1400 - �������
--1401 - ����
--1402 - ����

-- 1500 - ��������
--1501 - �����̹���
--1502 - �����̹���


-- 1600 - �������
--1601 - ������
--1602 - ����
--1603 - �������

insert into clss_code(classf_code, classf_nm)
values('1000','ȸ���з�');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1001','����ȸ��','1000');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1002','���ȸ��','1000');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1003','������ȸ��','1000');
insert into clss_code(classf_code, classf_nm)
values('1100','��������');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1101','��ǰ','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1102','���','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1103','������','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1104','�ֹ�/����','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1105','���','1100');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1106','��ǰ','1100');
insert into clss_code(classf_code, classf_nm)
values('1200','QNA��ó������');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1201','�亯�Ϸ�','1200');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1202','�亯��','1200');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1203','�亯�̿Ϸ�','1200');
insert into clss_code(classf_code, classf_nm)
values('1300','�����ڵ��');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1301','���۰�����','1300');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1302','�߰�������','1300');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1303','���ܰ�����','1300');
insert into clss_code(classf_code, classf_nm)
values('1400','�������');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1401','����','1400');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1402','����','1400');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1403','������','1400');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1404','������','1400');
insert into clss_code(classf_code, classf_nm)
values('1500','�����������');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1501','�����̹���','1500');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1502','�����̹���','1500');
insert into clss_code(classf_code, classf_nm)
values('1600','�������');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1601','������','1600');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1602','����','1600');
insert into clss_code(classf_code, classf_nm, classf_high_code)
values('1603','�������','1600');
commit;

select * from clss_code;

create table tb_member (
    id varchar2(20) primary key not null,
    pass varchar2(20),
    name varchar2(20)
    );
    commit;
insert into tb_member 
values('a','1','ȫ�浿');
insert into tb_member 
values('b','2','ȫ����');
insert into tb_member 
values('c','3','ȫ���');

1000 - ������ǰ
	1001 - TV
	1002 - �����
	1003 - ��Ź��
	1004 - ����û�ұ�
	1005 - DVD
	1006 - ������
	1007 - ��������
	1008 - ī�޶�
	1009 - �ڵ���
	1010 - �º�
	1011 - ��Ʈ��
	1012 - PC
	1013 - �����
	1014 - ������
1100 - �Ƿ�
	1101 - Ƽ����
	1102 - ��Ʈ
	1103 - û����
	1104 - ���ǽ�
	1105 - ġ��
	1105 - ����/��Ʈ
	1106 - ����/�߻�
	1107 - ����
	1108 - ����
	1109 - ������
	1110 - ��Ƽ��
	1111 - ����
1200 - ��ǰ
	1201 - ��/����/�����깰
	1202 - �ǰ���ǰ/���̾�Ʈ
	1203 - Ŀ��/����
	1204 - �Ｎ/����/������ǰ
1300 - ��Ÿ
	1301 - ����
	1302 - �ֹ��ǰ
	1303 - ����/�繫��ǰ
	1304 - ����
	1305 - Ƽ��
	1306 - ����
	1307 - �ڵ�����ǰ
    
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM)
values('1000','������ǰ');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1001','TV','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1002','�����','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1003','��Ź��','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1004','����û�ұ�','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1005','DVD','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1006','������','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1007','��������','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1008','ī�޶�','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1009','�ڵ���','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1010','�º�','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1011','��Ʈ��','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1012','PC','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1013','�����','1000');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1014','������','1000');

insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM)
values('1100','�Ƿ�');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1101','Ƽ����','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1102','��Ʈ','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1103','û����','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1104','���ǽ�','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1105','����/��Ʈ','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1106','����/�߻�','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1107','����','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1108','����','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1109','������','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1110','��Ƽ��','1100');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1111','����','1100');

insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM)
values('1200','��ǰ');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1201','��/����/�����깰','1200');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1202','�ǰ���ǰ/���̾�Ʈ','1200');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1203','Ŀ��/����','1200');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1204','�Ｎ/����/������ǰ','1200');


insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM)
values('1300','��Ÿ');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1301','����','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1302','�ֹ��ǰ','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1303','����/�繫��ǰ','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1304','����','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1305','Ƽ��','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1306','����','1300');
insert into product_category( PDT_TYPE_NO, PDT_TYPE_NM, PDT_HIGH_TYPE_NO)
values('1307','�ڵ�����ǰ','1300');
commit;

alter table product_category modify( pdt_type_nm varchar2(50));

--1-1. �̴��� �ְ��� top3
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
 
 --1-2. ��ǰ������ �������� ��Ÿ��
 select rownum,a.ac_no, c.ac_file_nm, c.ac_file_path, a.ac_nm, a.ac_start_price
 from auction a
 inner join product_category b
 on a.pdt_type_no = b.pdt_type_no
 inner join file_auction c
 on a.ac_no = c.ac_no
 where rownum < 5 
 and b.pdt_high_type_no = '1000'
 and c.ac_file_type = '1501'
 and a.ac_result = '1403'  -- ������
 order by ac_start_date desc;
 
 --1-3. �������� ��� ��Ӵٿ� �޴�
 --1�ܰ�
 select * 
 from product_category
 where pdt_high_type_no is null
 order by pdt_type_no;
--2�ܰ�
select a.pdt_type_no, a.pdt_type_nm
from product_category a
inner join product_category b
on a.pdt_high_type_no = b.pdt_type_no
where a.pdt_high_type_no = '1000'
order by a.pdt_type_no;

--1-4 �̴��� �ְ��� ��Ӵٿ�޴�
-- ��

--2 �������� ���
select a.ac_no, a.ac_start_price, c.ac_file_nm, c.ac_file_path
from auction a
inner join product_category b
on a.pdt_type_no = b.pdt_type_no
inner join file_auction c
on a.ac_no = c.ac_no
where a.pdt_type_no = '1001'
and a.ac_result = '1403' --������
and c.ac_file_type = '1501'
order by a.ac_start_date desc;

--3 �̴��� �ְ���
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
and a.ac_result = '1401' --������
and c.ac_file_type = '1501'
order by a.ac_start_date desc;

--4 ��Ż󼼺���
--4-1 ��ų���
select a.ac_start_date, a.ac_end_date, a.ac_nm, a.ac_content, a.ac_cnt, a.ac_start_price, b.bid_price, c.mb_id 
from auction a
inner join bid b
on a.ac_no = b.ac_no
inner join member_generic c
on a.mb_no = c.mb_no
where a.ac_no = 1   -- ���⿡ ��Ź�ȣ
and rownum = 1
order by bid_price desc;
--4-2 ������� ���� �̹���
select ac_file_nm, ac_file_path
from auction a
inner join file_auction b
on a.ac_no = b.ac_no
where b.ac_file_type = '1502'; --���� �̹���
--4-3 ���
select b.comments_no, b.comments_content, b.comment_mk_date, c.mb_id
from auction a
inner join comments b
on a.ac_no = b.ac_no
inner join member_generic c
on a.mb_no = c.mb_no
where a.ac_no = 1  -- ���⿡ ��Ź�ȣ
order by b.comments_no desc;

--5 �̴��� �ְ��� �󼼺���
--5-1 ��ų���
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
where a.ac_no=1;  -- ���⿡ ��Ź�ȣ
--5-2 �ְ��� ����
select ac_file_nm, ac_file_path
from auction a
inner join file_auction b
on a.ac_no = b.ac_no
where b.ac_file_type = '1502'; --���� �̹���
--5-3 �ְ��� ���
select b.comments_no, b.comments_content, b.comment_mk_date, c.mb_id
from auction a
inner join comments b
on a.ac_no = b.ac_no
inner join member_generic c
on a.mb_no = c.mb_no
where a.ac_no = 1  -- ���⿡ ��Ź�ȣ
order by b.comments_no desc;

--6 ��ű��
select c.mb_id, b.bid_date, b.bid_price, b.sbid_result
from auction a
inner join bid b
on a.ac_no = b.ac_no
inner join member_generic c
on c.mb_no = b.mb_no
where a.ac_no = 1  -- ���⿡ ��Ź�ȣ
and b.sbid_result != '1603' -- �������
order by bid_date desc;

--7 �����ϱ�
--7-1 ���簡 �����ֱ�
select b.bid_price
from auction a
inner join bid b
on a.ac_no = b.ac_no
where rownum = 1
order by b.bid_price desc;
--7-2 �����Է�
insert into bid(bid_no, bid_price, bid_date, bid_cnt, ac_no, mb_no, sbid_result) 
values (s_bid_no.nextval,20000,sysdate,1,1,1,'1601'); --������

--8 MyAuction
--8-1 �������� �����ֱ�
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
where d.mb_no = '1'  -- ���⿡ ȸ����ȣ
order by b.bid_no desc;

--9-4 �Ǹ����� �����ֱ�
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

--10 ��ŵ��
--��ų��� �Է�

insert into auction(
ac_no, ac_start_date, ac_end_date, ac_nm, ac_content, ac_cnt, ac_start_price, mb_no, pdt_type_no
) values (
s_auction_no.nextval, --��Ź�ȣ
to_date('2017-05-23 13:50', 'yyyy-mm-dd hh24:mi'),  --���۽ð�
to_date('2017-05-25 13:50', 'yyyy-mm-dd hh24:mi'),  --�����ð�
'������5',
'���� �����ϰ� 1�Ⱓ ����� �������Դϴ�.',
1, --����
50000, --���۰�
1, --ȸ����ȣ
'1009' --��ǰ��������
);


-- ������ϵ��(�����̹���)
insert into file_auction(
ac_file_no, ac_file_nm, ac_file_path, ac_file_rl_nm, ac_file_size, ac_no, ac_file_type
) values (
s_file_auction_no.nextval, --���Ϲ�ȣ
'asdfjsadjf_nsdla_ndasl.jpg', --�����̸�
'/auction/2017/05/25/', --���
'iphone.jpg', --�����̸�
'12345', --����ũ��
1, --��Ź�ȣ
'1501' --��������
);

-- ������ϵ��(�����̹���)
insert into file_auction(
ac_file_no, ac_file_nm, ac_file_path, ac_file_rl_nm, ac_file_size, ac_no, ac_file_type
) values (
s_file_auction_no.nextval, --���Ϲ�ȣ
'asdfjsadjf_nsdla_ndasl.jpg', --�����̸�
'/auction/2017/05/25/', --���
'iphone.jpg', --�����̸�
'12345', --����ũ��
1, --��Ź�ȣ
'1502' --��������
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
--1601 - ������
--1602 - ����
--1603 - �������
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
    
    -- ������ �����ุ �������̺� �ֱ�
    insert into bid_success(sbid_no, sbid_date, bid_no)
    select s_bid_success_no.nextval, bid_date, bid_no from bid where sbid_result='1602';
    
    select * from bid_success;
    select * from member_generic;
    select * from comments;
    delete comments;
    commit;