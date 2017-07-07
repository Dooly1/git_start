CREATE TABLE depart(
	depart_id NUMBER(20) NOT NULL,
	depart_name VARCHAR2(100)
)
select * from depart
drop table depart
SELECT u.* FROM orderuser u INNER JOIN project2_user l ON u.idx = l.idx WHERE u.idx = 1
SELECT * FROM project2_user;
-------------------------------------------------------
CREATE SEQUENCE project2_user_seq
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCYCLE;

drop sequence project2_user_seq

INSERT INTO project2_user VALUES (project2_user_seq.nextval, 'MASTER',
0, 'a1234567890', '최성진', '21345', '연수로', '연수동', '010-0101-0101', '89)@', 0, 'N');
CREATE TABLE project2_user(
	idx NUMBER(10) NOT NULL,
	u_id VARCHAR2(20) NOT NULL UNIQUE,
	depart_id NUMBER(20),
	pwd VARCHAR2(30) NOT NULL,
	username VARCHAR2(50) NOT NULL,
	zip VARCHAR2(10) NOT NULL,
	addr VARCHAR2(255) NOT NULL,
	addr2 VARCHAR2(255),
	phone VARCHAR2(30) NOT NULL,
	email VARCHAR2(100),
	point NUMBER(20),
	chk VARCHAR2(10) NOT NULL,
	PRIMARY KEY (idx, u_id)
);
select * from project2_user;
drop table project2_user;
-------------------------------------------------------
CREATE TABLE length(
	lengthcode NUMBER(10) PRIMARY KEY NOT NULL,
	l_start VARCHAR2(255) NOT NULL,
	l_start_num VARCHAR2(255) NOT NULL,
	l_end VARCHAR(255) NOT NULL,
	l_end_num VARCHAR2(255) NOT NULL,
	l_tax NUMBER(10) NOT NULL
);
CREATE SEQUENCE length_seq
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCYCLE;
delete from length;
select * from length
insert into length values(length_seq.nextval, '서울', 'A101', '인천', 'A202', 1000);
insert into length values(length_seq.nextval, '인천', 'A202', '서울', 'A101', 1000);
insert into length values(length_seq.nextval, '서울', 'A101', '경기', 'A303', 1500);
insert into length values(length_seq.nextval, '경기', 'A303', '서울', 'A101', 1500);
insert into length values(length_seq.nextval, '서울', 'A101', '강원', 'A404', 3000);
insert into length values(length_seq.nextval, '강원', 'A404', '서울', 'A101', 3000);
insert into length values(length_seq.nextval, '인천', 'A202', '경기', 'A303', 1500);
insert into length values(length_seq.nextval, '경기', 'A303', '인천', 'A202', 1500);
insert into length values(length_seq.nextval, '인천', 'A202', '강원', 'A404', 3000);
insert into length values(length_seq.nextval, '강원', 'A404', '인천', 'A202', 3000);
insert into length values(length_seq.nextval, '경기', 'A303', '강원', 'A404', 4000);
insert into length values(length_seq.nextval, '강원', 'A404', '경기', 'A303', 4000);
insert into length values(length_seq.nextval, '서울', 'A101', '서울', 'A101', 1000);
insert into length values(length_seq.nextval, '인천', 'A202', '인천', 'A202', 1000);
insert into length values(length_seq.nextval, '경기', 'A303', '경기', 'A303', 2000);
insert into length values(length_seq.nextval, '강원', 'A404', '강원', 'A404', 2000);

select * from length;
drop table length;
 -------------------------------------------------------
CREATE TABLE orderuser(
	 idx NUMBER(10),
	u_id VARCHAR2(20),
	odx VARCHAR2(50) PRIMARY KEY NOT NULL,
	oname VARCHAR2(50) NOT NULL,
	ozip VARCHAR2(10) NOT NULL,
	oaddr VARCHAR2(255) NOT NULL,
	oaddr2 VARCHAR2(255),
	ophone VARCHAR2(30) NOT NULL,
	oname_2 VARCHAR2(50) NOT NULL,
	ozip_2 VARCHAR2(10) NOT NULL,
	oaddr_2 VARCHAR2(255) NOT NULL,
	oaddr2_2 VARCHAR2(255),
	ophone_2 VARCHAR2(30) NOT NULL,
	odate DATE NOT NULL,
	odate2 DATE NOT NULL,
	oactive VARCHAR2(2) NOT NULL,
	lengthcode NUMBER(10) NOT NULL,
	FOREIGN KEY(lengthcode) REFERENCES length(lengthcode)
);
select * from orderuser;
drop table orderuser;
CREATE SEQUENCE orderuser_seq
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCYCLE;
delete from orderuser;
-------------------------------------------------------
CREATE TABLE product(
product_code VARCHAR2(255) PRIMARY KEY NOT NULL,
product_name VARCHAR2(255) NOT NULL,
product_price NUMBER(20) NOT NULL,
product_area VARCHAR2(255),
product_company VARCHAR2(255)
)
drop table product;
select * from product;

CREATE SEQUENCE product_seq
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCYCLE;

insert into product values('100000000000'+product_seq.nextval, '물품(S)', 3000, null, null);
insert into product values('100000000000'+product_seq.nextval, '물품(M)', 5000, null, null);
insert into product values('100000000000'+product_seq.nextval, '물품(L)', 10000, null, null);
insert into product values('100000000000'+product_seq.nextval, '중요처리물품(S)', 3500, null, null);
insert into product values('100000000000'+product_seq.nextval, '중요처리물품(M)', 5500, null, null);
insert into product values('100000000000'+product_seq.nextval, '중요처리물품(L)', 10500, null, null);
select * from product
delete from product where product_code = '6'
--------------------------------------------------------
CREATE TABLE orderlist(
	list_code VARCHAR2(50) PRIMARY KEY NOT NULL,
	product_code VARCHAR2(50),
	odx VARCHAR2(50) NOT NULL,
	product_name VARCHAR2(255) NOT NULL,
	list_saleprice NUMBER(20),
	list_count NUMBER(10) NOT NULL,
	FOREIGN KEY(odx) REFERENCES orderuser(odx)
);
delete from orderlist;

select * from orderlist;
drop table orderlist;
--------------------------------------------------------------------
CREATE TABLE hub(
	hub_code VARCHAR2(50) PRIMARY KEY NOT NULL,
	hub_name VARCHAR2(255) NOT NULL,
	hub_location VARCHAR2(255)
);
insert into hub values ('A101', '서울', '서울 강남구 강남대로');
insert into hub values ('A202', '인천', '인천 강화군 양도면 가능포로');
insert into hub values ('A303', '경기', '경기 고양시 덕양구 강매로');
insert into hub values ('A404', '강원', '강원 강릉시 가작로');

select * from hub;
drop table hub;
-----------------------------------------------------------
CREATE TABLE status(
	status_code VARCHAR2(50) PRIMARY KEY NOT NULL,
	hub_code VARCHAR2(50) NOT NULL,
	odx VARCHAR2(50) NOT NULL,
	status_current VARCHAR2(255) NOT NULL,
	FOREIGN KEY(hub_code) REFERENCES hub(hub_code),
	FOREIGN KEY(odx) REFERENCES orderuser(odx)
);
select * from status;
drop table status;
-------------------------------------------------------------
create table noticed(
  v_idx number(10) not null,
  v_name varchar2(255),
  v_subject varchar2(255),
  v_content varchar2(4000),
  v_pwd varchar2(255),
  v_regdate date
);
select * from noticed order by v_idx
CREATE SEQUENCE noticed_seq
INCREMENT BY 1
START WITH 1
MAXVALUE 99999999
NOCYCLE;

insert into noticed values (noticed_seq.nextval, '3', '3', '3', '3', sysdate);
insert into noticed values (noticed_seq.nextval, '4', '4', '4', '4', sysdate);
insert into noticed values (noticed_seq.nextval, '5', '5', '5', '5', sysdate);
insert into noticed values (noticed_seq.nextval, '6', '6', '6', '6', sysdate);
insert into noticed values (noticed_seq.nextval, '7', '7', '7', '7', sysdate);
insert into noticed values (noticed_seq.nextval, '8', '8', '8', '8', sysdate);
insert into noticed values (noticed_seq.nextval, '9', '9', '9', '9', sysdate);
insert into noticed values (noticed_seq.nextval, '10', '10', '10', '10', sysdate);