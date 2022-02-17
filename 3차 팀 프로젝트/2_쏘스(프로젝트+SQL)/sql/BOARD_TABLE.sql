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

insert into BOARD values(BOARD_SEQ.nextval, '���̿�1', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '������.png', '������.png', SYSDATE, SYSDATE, 1);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�2', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '�����Ĵ�.png', '�����Ĵ�.png', SYSDATE, SYSDATE, 1);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�3', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '������.png', '������.png', SYSDATE, SYSDATE, 2);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�4', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '������.png', '������.png', SYSDATE, SYSDATE, 2);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�5', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '�����Ĵ�.png', '�����Ĵ�.png', SYSDATE, SYSDATE, 3);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�6', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '������.png', '������.png', SYSDATE, SYSDATE, 4);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�7', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '������.png', '������.png', SYSDATE, SYSDATE, 5);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�8', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '�����Ĵ�.png', '�����Ĵ�.png', SYSDATE, SYSDATE, 5);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�9', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '������.png', '������.png', SYSDATE, SYSDATE, 3);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�10', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '�����Ĵ�.png', '�����Ĵ�.png', SYSDATE, SYSDATE, 3);
insert into BOARD values(BOARD_SEQ.nextval, '���̿�11', '�����̿�', '���� ����', '#���ֵ�', '���� �����̳׿�', 0, 0, 0, '������.png', '������.png', SYSDATE, SYSDATE, 3);






