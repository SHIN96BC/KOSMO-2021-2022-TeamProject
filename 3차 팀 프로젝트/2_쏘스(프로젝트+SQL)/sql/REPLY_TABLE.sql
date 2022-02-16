drop sequence REPLY_SEQ;
drop sequence PAGE_SEQ;
drop table REPLY;

purge recyclebin;

create table REPLY(
	R_NUM number,
	NICK nvarchar2(50),
	CONTENT nvarchar2(1000),
	LOVE number,
	HATE number,
	PAGE number,
	LEV number,
	TURN number,
	CLASSFI number,
	CONTENT_NUM number,
	constraint REPLY_PK primary key (R_NUM),
	constraint REPLY_CLASS_CHECK check (CLASSFI in(1,2,3,4,5,6))
);
create sequence REPLY_SEQ increment by 1 start with 1 nocache;
create sequence PAGE_SEQ increment by 1 start with 1 nocache;


insert into REPLY values(1, 1, '하이요1', '맛집집집집집집집지', 0, 0, 1, 0, 1, 1);
insert into REPLY values(2, 1, '하이요2', '맛집집2집집지', 0, 0, 1, 0, 1, 1);
insert into REPLY values(3, 1, '하이요4', '맛집3집집지', 0, 0, 1, 0, 1, 1);
insert into REPLY values(4, 1, '하이요5', '맛집4집집지', 0, 0, 1, 0, 1, 2);
insert into REPLY values(5, 1, '하이요6', '맛집집5지', 0, 0, 1, 0, 1, 3);
insert into REPLY values(6, 2, '하이요2', '맛집집집집집집집지', 0, 0, 1, 0, 2, 1);
insert into REPLY values(7, 3, '하이요3', '맛집집집집집집집지', 0, 0, 2, 0, 1, 1);
insert into REPLY values(8, 4, '하이요4', '맛집집집집집집집지', 0, 0, 2, 0, 2, 1);
insert into REPLY values(9, 5, '하이요5', '맛집집집집집집집지', 0, 0, 3, 0, 1, 1);
insert into REPLY values(10, 6, '하이요6', '맛집집집집집집집지', 0, 0, 3, 0, 2, 1);
insert into REPLY values(11, 1, '하이요7', '맛집집집집집집집지', 0, 0, 4, 0, 1, 3);
insert into REPLY values(12, 2, '하이요8', '맛집집집집집집집지', 0, 0, 5, 0, 1, 2);
insert into REPLY values(13, 3, '하이요9', '맛집집집집집집집지', 0, 0, 6, 0, 1, 2);