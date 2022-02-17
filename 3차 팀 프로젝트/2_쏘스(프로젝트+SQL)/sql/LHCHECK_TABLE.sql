drop sequence LHC_SEQ;
drop table LHCHECK;

purge recyclebin;

create table LHCHECK(
	LHC_NUM number constraint LHC_PK primary key,
	CLASSFI number,
	CONTENT_NUM number,
	NICK nvarchar2(50),
	LOVE number(1),
	HATE number(1),
	constraint LH_FI_CHECK check (CLASSFI in (10,11,12,13,14)),
	constraint LH_LOVE_CHECK check (LOVE in (0,1)),
	constraint LH_HATE_CHECK check (HATE in (0,1))
);
create sequence LHC_SEQ increment by 1 start with 1 nocache;
