drop sequence MEM_NUM_SEQ;
drop table MEMBER;

purge recyclebin;

CREATE TABLE MEMBER (
   EMAIL NVARCHAR2(100) CONSTRAINTS MEMBER_PK PRIMARY KEY,
   MEM_NUM NUMBER NOT NULL,
   MEM_NAME NVARCHAR2(30) NOT NULL,
   BIRTH DATE,
   PWD NVARCHAR2(50) NOT NULL,
   GRADE nvarchar2(40) default 'BASIC' check(grade in('BASIC' , 'Silver' , 'Gold' , 'VIP' , 'admin')),
   NICK NVARCHAR2(50) NOT NULL,
   MEM_PHONE NVARCHAR2(50) NOT NULL,
   MEM_LOC NVARCHAR2(150) NOT NULL,
   GENDER NUMBER CHECK(GENDER IN(1 , 0)) NOT NULL,
   ANNI DATE,
   COUPLE NUMBER CHECK(COUPLE IN(1 , 0)),
   LICENSE NUMBER CHECK(LICENSE IN(1 , 0)),
   ORDERCOUNT NUMBER
);
create sequence MEM_NUM_SEQ increment by 1 start with 1 nocache;
insert into member values ('qaz77@naver.com' , MEM_NUM_SEQ.nextval , '包府' , SYSDATE , '123' , 'admin' , '包府', 10101 , '救剧矫' , 0 , SYSDATE , 0 , 0 , 0);