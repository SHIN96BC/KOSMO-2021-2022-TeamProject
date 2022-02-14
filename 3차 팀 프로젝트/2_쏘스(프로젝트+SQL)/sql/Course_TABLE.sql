drop sequence COURSE_SEQ;
drop table COURSE;

purge recyclebin;

create table COURSE(
	C_NUM NUMBER,
	C_NAME NVARCHAR2(20),
	C_INTRO NVARCHAR2(501),
	C_NAVI NVARCHAR2(501),
	CHOOSED NUMBER,
	LOVE NUMBER,
	HATE NUMBER ,
	MEM_NUM NUMBER,
	A_NUM NUMBER,
	L_NUM NUMBER,
	S_NUM NUMBER,
	C_PHOTO NVARCHAR2(20),
	C_ORI_PHOTO NVARCHAR2(20),
	DIVISION number,
	constraint COURSE_PK primary key(C_NUM)
);
constraint sequence COURSE_SEQ increment by 1 start with 1 nocache;