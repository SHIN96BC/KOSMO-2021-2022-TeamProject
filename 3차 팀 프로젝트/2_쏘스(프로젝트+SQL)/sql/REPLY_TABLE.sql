drop sequence REPLY_SEQ;
drop sequence PAGE_SEQ;
drop table REPLY;

purge recyclebin;

create table REPLY(
	R_NUM number,
	CLASSFI number,
	NICK nvarchar2(10),
	CONTENT nvarchar2(1000),
	LOVE number,
	HATE number,
	PAGE number,
	LEV number,
	TURN number,
	B_NUM number,
	C_NUM number,
	constraint REPLY_PK primary key (R_NUM, CLASSFI),
	constraint REPLY_FI_CHECK check (CLASSFI in (0,1))
);
create sequence REPLY_SEQ increment by 1 start with 1 nocache;
create sequence PAGE_SEQ increment by 1 start with 1 nocache;