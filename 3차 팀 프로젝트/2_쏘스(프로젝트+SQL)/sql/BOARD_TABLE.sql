drop sequence BOARD_SEQ;
drop table BOARD;

purge recyclebin;

create table BOARD(
	B_NUM number constraint  BOARD_PK primary key,
	NICK nvarchar2(50),
	SUBJECT nvarchar2(300),
	KATEGORIE nvarchar2(100),
	TAG nvarchar2(100),
	CONTENT nvarchar2(1000),
	LOVE number,
	HATE number,
	VIEWS number,
	B_PHOTO nvarchar2(200),
	B_ORI_PHOTO nvarchar2(200),
	B_DATE date,
	UP_DATE date,
	DIVISION number,
	constraint BOARD_DIV_CHECK check (DIVISION in (1,2,3,4,5))
);
create sequence BOARD_SEQ increment by 1 start with 1 nocache;

insert into BOARD values(BOARD_SEQ.nextval, '하이요1', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '각지불.png', '각지불.png', SYSDATE, SYSDATE, 1);
insert into BOARD values(BOARD_SEQ.nextval, '하이요2', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '명리동식당.png', '명리동식당.png', SYSDATE, SYSDATE, 1);
insert into BOARD values(BOARD_SEQ.nextval, '하이요3', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '상준제.png', '상준제.png', SYSDATE, SYSDATE, 2);
insert into BOARD values(BOARD_SEQ.nextval, '하이요4', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '각지불.png', '각지불.png', SYSDATE, SYSDATE, 2);
insert into BOARD values(BOARD_SEQ.nextval, '하이요5', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '명리동식당.png', '명리동식당.png', SYSDATE, SYSDATE, 3);
insert into BOARD values(BOARD_SEQ.nextval, '하이요6', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '상준제.png', '상준제.png', SYSDATE, SYSDATE, 4);
insert into BOARD values(BOARD_SEQ.nextval, '하이요7', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '상준제.png', '상준제.png', SYSDATE, SYSDATE, 5);
insert into BOARD values(BOARD_SEQ.nextval, '하이요8', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '명리동식당.png', '명리동식당.png', SYSDATE, SYSDATE, 5);
insert into BOARD values(BOARD_SEQ.nextval, '하이요9', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '각지불.png', '각지불.png', SYSDATE, SYSDATE, 3);
insert into BOARD values(BOARD_SEQ.nextval, '하이요10', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '명리동식당.png', '명리동식당.png', SYSDATE, SYSDATE, 3);
insert into BOARD values(BOARD_SEQ.nextval, '하이요11', '맛집이요', '맛집 리뷰', '#제주도', '여기 맛집이네요', 0, 0, 0, '각지불.png', '각지불.png', SYSDATE, SYSDATE, 3);






