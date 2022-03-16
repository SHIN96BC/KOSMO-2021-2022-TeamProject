
drop sequence REPLY_SEQ;
drop sequence PAGE_SEQ;
drop table REPLY;

DROP TABLE XWORD;

drop table LANDMARK;
drop sequence LANDMARK_SEQ;

drop table FOOD;
drop sequence FOOD_SEQ;

drop table ACTIVITY;
drop sequence ACTIVITY_SEQ;

drop table COURSE;
drop sequence COURSE_SEQ;

drop sequence LHC_SEQ;
drop table LHCHECK;

drop sequence BOARD_SEQ;
drop table BOARD;

drop sequence MEM_NUM_SEQ;
drop table MEMBER;





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
insert into member values ('qaz77@naver.com' , MEM_NUM_SEQ.nextval , '����' , SYSDATE , '123' , 'admin' , '����', 10101 , '�Ⱦ��' , 0 , SYSDATE , 0 , 0 , 0);


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




create table COURSE(
CNUM NUMBER,
CNAME NVARCHAR2(20) not null,
CINTRO NVARCHAR2(501) not null,
CNAVI NVARCHAR2(501)not null,
CHOOSED NUMBER not null,
LOVE NUMBER not null,
HATE NUMBER not null,
MEM_NUM NUMBER not null,
ANUM NUMBER not null,
LNUM NUMBER not null,
SNUM NUMBER not null,
CPHOTO NVARCHAR2(20) not null,
CORIPHOTO NVARCHAR2(20) not null,
DIVISION NUMBER not null,
constraint COURSE_PK primary key(CNUM)
);
create sequence COURSE_SEQ increment by 1 start with 1 nocache;

insert into COURSE values(COURSE_SEQ.nextval,'�ٴٸ� �޸���','���޶��� �ٴٸ� ���� ���Ÿ� ���� ���� �ؾȰ�','���ֱ�������->������',10,46,8,1,1,1,1,'�ٴٸ� �޸���.png','�ٴٸ� �޸���.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'���ֵ� ��������','ī�޶���� ì�ܾ� �� �ݵ�� �����Ÿ� �ڽ�','���ֱ�������->��������',9,23,8,1,1,1,1,'���ֵ� ��������.png','���ֵ� ��������.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'������ ������ ����','������ ������ ������ ��õ ��������','���ֱ�������->�Դ��ؼ�����',8,22,8,1,1,1,1,'������ ������ ����.png','������ ������ ����.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'�� �� �λ���','�����۰��� ��. ������ ���ʿ��� ���� ��� �߰�!','��õ����������->�Դ��ؼ�����',7,82,8,1,1,1,1,'�� �� �λ���.png','�� �� �λ���.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'�߹��� ��¥ ���','ȣ���� ȭ������ ���� �߹� �� �� ����','�����ֻ�����->�ٴٴ�',16,28,8,1,1,1,1,'�߹��� ��¥ ���.png','�߹��� ��¥ ���.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'�ܿ￡�� ���� �� �ִ�','���麸�� ���ֵ���','���̵��鳪������->���������',15,52,8,1,1,1,1,'�ܿ￡�� ���� �� �ִ�.png','�ܿ￡�� ���� �� �ִ�.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'�ʺ��ٴٸ� ����','���� �ݽð�������� ���ƺ���','����->������������',14,51,8,1,1,1,1,'�ʺ��ٴٸ� ����.png','�ʺ��ٴٸ� ����.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'���� �����ϴ� �ֿ�','�ֿ��� ���� �ִ� ������ ����!','�����ؼ�����->�ֿ��ؾȵ���',13,55,8,1,1,1,1,'���� �����ϴ� �ֿ�.png','���� �����ϴ� �ֿ�.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'�ܿ￡ ���� �� ����','������� ���ڸ�����','��ġ���غ�->���ֺ�����������',12,53,8,1,1,1,1,'�ܿ￡ ���� �� ����.png','�ܿ￡ ���� �� ����.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'������ ������','���ָ� ����� ����. ������ ��ȸ!','������ �غ�->���ֱ�������',11,83,8,1,1,1,1,'������ ������.png','������ ������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'���ִ� �Ķ���','�ٴٿ� �ٴ��� ����, �� ���� �ٴ��� �̾߱�','���ֱ�������->�ϵ��غ�',20,11,8,1,1,1,1,'���ִ� �Ķ���.png','���ִ� �Ķ���.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'������ ����','�����屺���� ���, �ݴ� ���, �̽õ����� ���, ��� ������ �����Ʈ','���ɼ����屺����->�����ʱ�',19,99,8,1,1,1,1,'������ ����.png','������ ����.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'�������� ������','���, �̰� �� �غ��� ��! ��õ���� ��ǥ�޴�','�Դ��ؼ�����->�봫�̿���',19,88,8,1,1,1,1,'�������� ������.png','�������� ������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'���� ������ ������','��¥���θ� �� ä�� ������ ����','���������->���ֱ�������',18,77,8,1,1,1,1,'���� ������ ������.png','���� ������ ������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'����³� �� ����','��ٶ��� ġ�� ����, �� �ٸ� �ŷ� �߰��ϱ�','����Ͻ���->�ƶ����Ʈ ��õ, ������',17,66,8,1,1,1,1,'����³� �� ����.png','����³� �� ����.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'������ Ǫ���� ����','�޷���! ������ ���� ������','������->��ȣ�׿��ؼ�����',6,84,8,1,1,1,1,'������ Ǫ���� ����.png','������ Ǫ���� ����.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'������ ����� �Բ�','������ ������ ����ϴ� ����','4.3��ȭ����->���ֵ���ȭ����',15,65,8,1,1,1,1,'������ ����� �Բ�.png','������ ����� �Բ�.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'�������ĸ� ����','����� �������� �����ڽ�','����θ�->�ٶ�������',14,54,8,1,1,1,1,'�������ĸ� ����.png','�������ĸ� ����.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'���ֵ� �̼��� ����','�ٴ�ó�� ǰ��� ���� ���� �̾߱�','��������->���߼��Ÿ�',11,59,8,1,1,1,1,'���ֵ� �̼��� ����.png','���ֵ� �̼��� ����.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'����� �����ϴ�','ġ���� ����� ������ ��','ġ���ǽ�->��ȯ����',11,39,8,1,1,1,1,'����� �����ϴ�.png','����� �����ϴ�.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'�Ѷ���� ����','�°��� �ź�, �Ѷ��� ���������','�������->������',11,19,8,1,1,1,1,'�Ѷ���� ����.png','�Ѷ���� ����.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'������ �߰� ����','���̵�� �Բ� ���ֽ��� �߰� ���� �ڽ�','�������غ�->�����ؾȵ���',30,59,8,1,1,1,1,'������ �߰� ����.png','������ �߰� ����.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'������ ����! ���� ���� �ڽ�','���帶ũ���� �λ��� ���','��ȣ�׿��ؼ�����->������׸���ũ',31,79,8,1,1,1,1,'������ ����! ���� ���� �ڽ�.png','������ ����! ���� ���� �ڽ�.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'������ ����ϸ�','ģ���� ������ ������ ���� ���','��ұ�->���ֱ�������',33,77,8,1,1,1,1,'������ ����ϸ�.png','������ ����ϸ�.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'��� ���ΰ�ó��','��ġ�ְ� ��Ȧ�� ����ϱ�','���ֵ����̼���->��������',34,76,8,1,1,1,1,'��� ���ΰ�ó��.png','��� ���ΰ�ó��.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'����� ���� ��������','��ü��, ����, �ȱ����Ѱ�','������ö������->�ڹ���������ִ�',35,75,8,1,1,1,1,'����� ���� ��������.png','����� ���� ��������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'������ ������ ǰ��','�������� �������� ��������','��ġ���غ�->���ֱ�������',36,74,8,1,1,1,1,'������ ������ ǰ��.png','������ ������ ǰ��.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'���̵� ���� ����','���̵鵵 ��ſ��ϴ� ������ ����','���ڷ���->�Դ��ؼ�����',37,38,8,1,1,1,1,'���̵� ���� ����.png','���̵� ���� ����.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'�����ִ� �� �� ��','�Ƿθ� ���ʰ��� �����, ����ϰ� �ϻ����� ���ư���','������->���ֱ�������',15,34,8,1,1,1,1,'�����ִ� �� �� ��.png','�����ִ� �� �� ��.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'���߱������� �����','�ѹ��� ������ ����','õ��������->���������',16,32,8,1,1,1,1,'���߱������� �����.png','���߱������� �����.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'�ѹ����� ��������','������ ���� ���� �׸��� ����','�������غ�->�Դ��ؼ�����',17,53,8,1,1,1,1,'�ѹ����� ��������.png','�ѹ����� ��������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'������ �ܿ￩�� ù��','���ۺ��� ���� ���� ����','���ֱ�������->�����߻��',18,75,8,1,1,1,1,'������ �ܿ￩�� ù��.png','������ �ܿ￩�� ù��.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'�߿ﶩ ������ ���ʿ���','�������� �߲��߲��� �÷����� ��������!','�������Ĺ���->��ұ�',19,25,8,1,1,1,1,'�߿ﶩ ������ ���ʿ���.png','�߿ﶩ ������ ���ʿ���.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'�� ���� �鿩�ٺ���','���� ���� ������ ��������, �����ڿ� 1�ڽ�','��ұ�->��Ӹ��ؾ�',10,45,8,1,1,1,1,'�� ���� �鿩�ٺ���.png','�� ���� �鿩�ٺ���.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'�� ���� ������','���� ���Ÿ� ���� ������ ��ǥ �ڽ�','���߼��Ÿ�->������',11,54,8,1,1,1,1,'�� ���� ������.png','�� ���� ������.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'���ְ� ó���̶��','ó�� ������ ���ֿ� ģ�� �Ǳ�','���ֱ�������->�߹������غ�',5,14,8,1,1,1,1,'���ְ� ó���̶��.png','���ְ� ó���̶��.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'�� ���� �� ������','������ �̵��� ����, ������ ���ֿ��� 2�ڽ�','��������->�Դ��ؼ�����',6,85,8,1,1,1,1,'�� ���� �� ������.png','�� ���� �� ������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'���� �ٴ� ���','���ָ� �ð�������� ���� �����ϱ�','�����ڿ��޾縲->����ؼ�����',7,64,8,1,1,1,1,'���� �ٴ� ���.png','���� �ٴ� ���.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'���� ���佺�� ����','���� ������� ���޶��� �ٴٱ���','����θ�->���������',8,55,8,1,1,1,1,'���� ���佺�� ����.png','���� ���佺�� ����.png',1);
COMMIT;



create table ACTIVITY(
	ANUM number constraint A_NUM_PK primary key,
	ANAME nvarchar2(30) constraint A_NAME_NN not null,
	AINTRO nvarchar2(100) constraint A_INTRO_NN not null,
	ACOST number,
	AADDRESS nvarchar2(50) constraint A_ADRESS_NN not null,
	APHONE nvarchar2(15),
	AOPCL date default SYSDATE,
	ACLOSED date default SYSDATE,
	APHOTO nvarchar2(50) constraint A_PHOTO_NN not null,
	AORIPHOTO nvarchar2(50) constraint A_ORI_PHOTO_NN not null,
	CHOOSED number,
	REVIEW nvarchar2(50),
	STAR NUMBER CHECK(STAR IN(1, 2, 3, 4, 5)) constraint STAR3_CHECK not null,
	VIEWS number,
	DIVISION NUMBER CHECK(DIVISION IN(1, 2, 3, 4, 5)) constraint DIVISION3_CHECK not null
);
create sequence ACTIVITY_SEQ increment by 1 start with 1 nocache;

insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��Ұ�', '�ι��� �ٴ幰�� ������ ���� ��ġ��',0,'�������� ��ȿ��','064-732-1562',default,default,'��Ұ�.png','��Ұ�.png', 1,'���� �����Ҿ��',5,300,1);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'ũ���� ����','������ �Ƿθ� Ǯ�� �ʹٸ�',70000,'���ֽ� ������ 3785-1','070-7543-8378',default,default,'ũ���̿���.jpeg','ũ���̿���.jpeg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����ī�� �÷�','�Ѵ��غ� ���޶��� �� �ٴٸ� �����ٺ��� ��� �� �ִ� �ְ��� ��Ƽ��Ƽ',0,'���ֽ� �ֿ��� �ֿ��� 2490-1','010-4683-6492',default,default,'����ī��÷�.png','����ī��÷�.png',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�򺼷���', '�Ѷ�� �߻갣���� ���� ���߾�Ƽ��Ƽ!',0,'���ֽ� ��ϼ��� 15','1588-6418',default,default,'�򺼷���.jpg','�򺼷���.jpg', 1,'���� �����Ҿ��',5,300,1);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��漱������','����� �۾ǻ� �α� �ؾ��� ������ ������ �� �ִ� ������ ���ֿ����� �ʼ��ڽ�',70000,'�������� �ȴ��� ȭ���ؾȷ�106���� 16','064-792-1188',default,default,'��漱������.jpg','��漱������.jpg',10,'�Ƿ� Ǯ����',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'���־߻�����Ž��','���ֹٴٸ� ���� �� �ƴ� ����԰� �Բ� �߻������� ã�� ������ ������.',0,'�������� �����ϸ�� 98����14-32','050-5558-3838',default,default,'���־߻�����Ž��.jpg','���־߻�����Ž��.jpg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����������', '���ֿ��� ���� �ڳ������ �̱��� ����',0,'�������� �ȴ��� ��ȭ��319���� 31-11','064-792-1233',default,default,'����������.jpg','����������.jpg', 1,'���� �����Ҿ��',3,300,1);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�������̿����','����ģ������� �޽İ� ������ �ð�',70000,'���ֽ� ������ 4554-20','064-794-2828',default,default,'�������̿����.jpg','�������̿����.jpg',10,'�Ƿ� Ǯ����',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�Ѷ���������','�Ѷ��� �Բ��ϴ� ����� ���ֿ���',0,'���ֽ� �Ѹ���555','064-729-1958',default,default,'�Ѷ���������.jpg','�Ѷ���������.jpg',10,'�Ƿ� Ǯ����',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'���ֹٴ��ϴô��̺꼾��','��Ų������� �ŷ¼�����~ �ٴټ����� ǳ��!',0,'���ֽ� ����3�� 20','064-702-2664',default,default,'���ֹٴ��ϴô��̺꼾��.jpg','���ֹٴ��ϴô��̺꼾��.jpg',10,'�Ƿ� Ǯ����',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'������׸���ũ','¥���� ��ſ��� ���Ѵ�� ��ܶ�! ������׸���ũ',0,'���ֽ� ���ֽ� ������ 69','064-742-3700',default,default,'������׸���ũ.jpg','������׸���ũ.jpg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��ħ�̼Ҹ���','���̵�� �Բ��ϴ� ����ü��',0,'���ֽ� ���� 155','064-727-2545',default,default,'��ħ�̼Ҹ���.jpg','��ħ�̼Ҹ���.jpg',10,'�Ƿ� Ǯ����',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��Ű����','�پ��� ������ �����ϴ�',0,'���ֽ� �ƶ�2�� 113-1','064-755-5920',default,default,'��Ű����.jpg','��Ű����.jpg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��ȣĵ��','Ǫ�� �� ���ϼ�ó�� ������ �ٴٸ� ����',0,'���ֽ� ���ֽ� ���ؾȷ� 66, 2��','010-2907-2754',default,default,'��ȣĵ��.jpg','��ȣĵ��.jpg',10,'�Ƿ� Ǯ����',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��ټ�����','������ Ǫ�� �ڿ� ���� �޸��� �¸�',0,'���ֽ� ���ڸ��� 485-15','064-784-1441',default,default,'��ټ�����.jpg','��ټ�����.jpg',10,'�Ƿ� Ǯ����',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�����μӸ���','�ֹε��� ���� �����ϰ� �ִ� �μ���',0,'�������� ������������19','064-710-6797',default,default,'�����μӸ���.jpg','�����μӸ���.jpg',10,'�Ƿ� Ǯ����',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'��ұ���Ʈ��Ʈ','�ѷ��ڽ��ͺ��� ����ִ� ��Ʈ��Ʈ',0,'�������� ��ȿ�� 999-3','064-733-0251',default,default,'��ұ���Ʈ��Ʈ.jpg','��ұ���Ʈ��Ʈ.jpg',10,'�Ƿ� Ǯ����',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�߹��׶�����Ʈ','���� �ִ� ��Ư�� ������ ��Ʈ',0,'�������� �������� ������ 172-7','064-739-7776',default,default,'�߹��׶�����Ʈ.jpg','�߹��׶�����Ʈ.jpg',10,'�Ƿ� Ǯ����',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�쵵�����','�Ƹ��ٿ� ���������� �߾�',0,'�������� ������ ���긮 347-9','064-784-2333',default,default,'�쵵�����.jpg','�쵵�����.jpg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�ֳ��ܰ���ü�����','�׸��� �ִ� �ֳ���ü��',0,'�������� ���������� 168','064-764-7759',default,default,'�ֳ��ܰ���ü�����.jpg','�ֳ��ܰ���ü�����.jpg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'���ַ��Ϲ���ũ','���� ������ ��������� ���� �� �� �ִ� ��Ƽ��Ƽ �ڵ�����',0,'���ֽ� �봫�̿����� 641','064-783-0033',default,default,'���ַ��Ϲ���ũ.jpg','���ַ��Ϲ���ũ.jpg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�������ϴ�','���ֵ� ������ �޸��� �̻�ü��',0,'�������� ������ �����Ϸ� 397','064-784-3631',default,default,'�������ϴ�.jpg','�������ϴ�.jpg',10,'�Ƿ� Ǯ����',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�κ�������','���� ������ ������ �� �ִ� �κ����ð�',0,'���ֽ� �ظ����ؾȷ� 1032','064-783-0825',default,default,'�κ�������.jpg','�κ�������.jpg',10,'�Ƿ� Ǯ����',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����������Ŭ��','����� �ؾ緹���� �׸���ũ',0,'���ֽ� ���︮ 1-11','064-783-0000',default,default,'�����μӸ���.jpg','�����μӸ���.jpg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����Ʈ','��Ʈ���� ���� ������ ǳ��',0,'���ֽ� �����ؾȷ� 229-16','064-725-0225',default,default,'��ұ���Ʈ��Ʈ.jpg','��ұ���Ʈ��Ʈ.jpg',10,'�Ƿ� Ǯ����',1,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'���ֿ����ε�','�߻��� ����� ������ ���ڿа� ȯ������ �����̸��� ǳ���� ������� ¥���� �����ε带 ��ܿ�',0,'���ֽ� ���긮 624-4 ������ķ��','0507-1429-7912',default,default,'���ֿ����ε�.jpg','���ֿ����ε�.jpg',10,'�Ƿ� Ǯ����',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'û�ʹ�','�ڿ��� �ﳪ�� ����',0,'�������� �����̸���57���� 34','064-787-7811',default,default,'û�ʹ�.jpg','û�ʹ�.jpg',10,'�Ƿ� Ǯ����',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'������������','����, �ܵ���, �������� �� ������ �ؾ��� ������ ������ �� �ִ� ������',0,'�������� �����߷� 40','064-732-1717',default,default,'������������.jpg','������������.jpg',10,'�Ƿ� Ǯ����',2,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'����ī��帣���','��ħ���� ������ �ʿ��� �޸���',0,'�������� ������ 2454','064-787-5220',default,default,'����ī��帣���.jpg','����ī��帣���.jpg',10,'�Ƿ� Ǯ����',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'�����μӸ���','�ֹε��� ���� �����ϰ� �ִ� �μ���',0,'�������� ������������19','064-710-6797',default,default,'�����μӸ���.jpg','�����μӸ���.jpg',10,'�Ƿ� Ǯ����',5,5,2);

commit;


create table FOOD(
	FNUM number constraint F_NUM_PK primary key,
	FNAME nvarchar2(30) constraint F_NAME_NN not null,
	FINTRO nvarchar2(100) constraint F_INTRO_NN not null,
	FCOST number,
	FADDRESS nvarchar2(50) constraint F_ADRESS_NN not null,
	FPHONE nvarchar2(15),
	FOPCL date default SYSDATE,
	FBREAK date default SYSDATE,
	FCLOSED date default SYSDATE,
	FPHOTO nvarchar2(50) constraint F_PHOTO_NN not null,
	FORIPHOTO nvarchar2(50) constraint F_ORI_PHOTO_NN not null,
	CHOOSED number,
	REVIEW nvarchar2(50),
	STAR NUMBER CHECK(STAR IN(1, 2, 3, 4, 5)) constraint STAR_CHECK not null,
	VIEWS number,
	DIVISION NUMBER CHECK(DIVISION IN(1, 2, 3, 4, 5)) constraint DIVISION_CHECK not null
);
create sequence FOOD_SEQ increment by 1 start with 1 nocache;

insert into FOOD values(FOOD_SEQ.nextval, '�����״�', '��Ƣ��, ��, ������ ���ֿ� ���������� �� ���̸� ���� ��!',5000,'���ֽ� ���ŷ� 30','050714395792',default,default,default,'�����״�.png','�����״�.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�ﵵ', '��ū�� ������ �԰� ������ �ﵵ «�Ͷ��',5000,'���ֽ� ȭ���1��17','07089002486',default,default,default,'�ﵵ.png','�ﵵ.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '��������', '���ҿ� ������ ����ϴ� ��䰥�� ����',5000,'���ֽ� ����4��41','0647487078',default,default,default,'��������.png','��������.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�����ȣ��', '������ ���⿡ ������ ����~ �׷� ��',5000,'���ֽ� ����� 15 1��','050431391345',default,default,default,'�����ȣ��.png','�����ȣ��.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�޹в�����', '��� �⿬�� ������ �̻����� ��丮 ����',5000,'���ֽ� ������ 136','0647116841',default,default,default,'�޹в�����.png','�޹в�����.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�츮��', '���G���� ���� �ְ� ǰ���� ���⸦ ��������',5000,'���ֽ� ���ŷ�1�� 23,1��','0647442326',default,default,default,'�츮��.png','�츮��.png', 1,'���־��',3,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�����ٴ�', '����ȸ ���� ���� ����������',5000,'���ֽ� �﹫��1��6','0647426300',default,default,default,'�����ٴ�.png','�����ٴ�.png', 1,'���־��',3,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '������', '������ ������ ��Ʈ���� ����������',5000,'���ֽ� ����2�� 23','0647489363',default,default,default,'������.png','������.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '������', 'ĳ���ٿ� �ִ� ���� ���� ������� ���ǿ�!',5000,'���ֽ� �﹫��40','0649010755',default,default,default,'������.png','������.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '��Ǭ�հ���', '����� ��Ǭ �հ���, ����� ���Ƹ����� ��������',5000,'���ֽ� ������14','050714053663',default,default,default,'��Ǭ�հ���.png','��Ǭ�հ���.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '������������', '�� �������� ���ⲯ ��� �⽤��',5000,'���ֽ� ���ؾȷ� 356','0647135999',default,default,default,'������������.png','������������.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�ĵ�����', '��, ������, ���� ��� �Ϻ��� ���ױ�ó �Ż� ����',5000,'���ֽ� �Ŵ��15�� 2 1��','0647491611',default,default,default,'�ĵ�����.png','�ĵ�����.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�����', '����� ��Ǭ �հ���, ����� ���Ƹ����� ��������',5000,'���ֽ� ������14','050714053663',default,default,default,'�����.png','�����.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '��������', '���� ������ ������ �赵 ��������',5000,'���ֽ� ���۱� 18,1��','0647124152',default,default,default,'��������.png','��������.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '���������', '������ �԰� ������ ����� ������',5000,'���ֽ� �﹫��82 1��','0647424483',default,default,default,'���������.png','���������.png', 1,'���־��',2,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�̼��ּҹ������뱹��', '����� ��Ǭ �հ���, ����� ���Ƹ����� ��������',5000,'���ֽ� ������14','050714053663',default,default,default,'�̼��ּҹ������뱹��.png','�̼��ּҹ������뱹��.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '����Ƣ��', '������ Ƣ���������Ƣ��',5000,'���ֽ� ������6�� 20','0647233392',default,default,default,'����Ƣ��.png','����Ƣ��.png', 1,'���־��',3,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�̼۽�Ź', '�ſ������� �����ϰ� ��Ʈ���� ������!',5000,'���ֽ� �﹫�� 11��','050714111028',default,default,default,'�̼۽�Ź.png','�̼۽�Ź.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�Ҵ㼱', '���� �˰���� ���� �Ҵ㼱',5000,'���ֽ� ������6��3','01043378238',default,default,default,'�Ҵ㼱.png','�Ҵ㼱.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�츮�����', '������ ��ð� �ʹٸ� �츮��������� ',5000,'���ֽ� �Ŵ��13��19','0647459252',default,default,default,'�츮�����.png','�츮�����.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�Ҷ��н�', '���� ��ó���� ������ ��ħ �ذ��ϱ� ���� �н���',5000,'���ֽ� �Ŵ��67','0647487998',default,default,default,'�Ҷ��н�.png','�Ҷ��н�.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '���Ǵ���', '�Դ³��� �ູ��! ���Ǵ��� �ұ���',5000,'���ֽ� ȭ����47','01025263206',default,default,default,'���Ǵ���.png','���Ǵ���.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '���������', '���������� ���� ������ �����',5000,'���ֽ� ������33-3','0647566076',default,default,default,'���������.png','���������.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '��ȭ������Ƚ��', '����ͼ� �Դ� �������� ���� ���� �ְ��� �� ����',5000,'���ֽ� ������6��3','01043378238',default,default,default,'��ȭ������Ƚ��.png','��ȭ������Ƚ��.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '��â��ǳõ����', 'ȭ���� ���/����/����� ������ ������ ����',5000,'���ֽ� �Ŵ��13��19','0647459252',default,default,default,'��â��ǳõ����.png','��â��ǳõ����.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�޺�����������', '������ �� �ȿ��� ��� ���ߴ� �� ',5000,'���ֽ� �Ŵ��67','0647487998',default,default,default,'�޺�����������.png','�޺�����������.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '��ǳ���屹', '�Ұ�� �������屹 ������, ��ǳ���屹�̿���',5000,'���ֽ� ȭ����47','01025263206',default,default,default,'��ǳ���屹.png','��ǳ���屹.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�Ѷ�걹��', '���ֿ� �̺��� �� ���� ���� ��ⱹ���� ��� ������!',5000,'���ֽ� ������33-3','0647566076',default,default,default,'�Ѷ�걹��.png','�Ѷ�걹��.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�����ʹ�', '�̽��� �ʹ�� ȸ�� ���ֵ� �����Դϴ�',5000,'���ֽ� �¼���4��1','0647246768',default,default,default,'�����ʹ�.png','�����ʹ�.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�ɴ�����', '��⿡ ���� �Ǵ�',5000,'���ֽ� ����� 537-1 1��','050714036699',default,default,default,'�ɴ�����.png','�ɴ�����.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�ķ������', '�Ծ�� ��������ڵ�� ���Ⱑ �ٷ� �̻� �������',5000,'���ֽ� ������2�� 33','0647277555',default,default,default,'�ķ������.png','�ķ������.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�����', '�� ������ ���� ���� �Ļ��� �����ο� ����',5000,'���ֽ� ��õ��33','0647497113',default,default,default,'�����.png','�����.png', 1,'���־��',3,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�����Ĵ�', 'Ž���� �� �׸� �ູ�� �帳�ϴ�.',5000,'���ֽ� ��ȭ�� 51-1','0647422226',default,default,default,'�����Ĵ�.png','�����Ĵ�.png', 1,'���־��',2,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�ΰ��׾�ū��', '�ſ� ������ ������ �� �ΰ��׾�ū�̷�',5000,'���ֽ� ������ 46','0647229299',default,default,default,'�ΰ��׾�ū��.png','�ΰ��׾�ū��.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�¾��ȸ', '�ν� ���� �ʼ��ڽ����� Hip�� ���� ����',5000,'���ֽ� �߾ӷ�2�� 31','050713742268',default,default,default,'�¾��ȸ.png','�¾��ȸ.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '���ϸ���и�', '�и�� ����Į������ �Բ� ���� �ʹٸ� �����!',5000,'�߹�������331','0647390023',default,default,default,'���ϸ���и�.png','���ϸ���и�.png', 1,'���־��',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '�Ϸ�溸��', '�����ϸ� ������ �Ϸ�溸��! ������ �����',5000,'���ֽ� �߾ӷ�2�� 9','0647527890',default,default,default,'�����.png','�����.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '����ȭ��', 'û���ΰ� ���� ���Ѱ���, �ǰ� �԰Ÿ�',5000,'���ֽ� �߾ӷ�11��1','01064868640',default,default,default,'����ȭ��.png','����ȭ��.png', 1,'���־��',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '������', '�ð��� ���������� ���ٸ� �ع���',5000,'���ֽ� ��õ�� ������1751','0647840809',default,default,default,'������.png','������.png', 1,'���־��',4,300,1);

commit;


create table LANDMARK(
	LNUM number constraint L_NUM_PK primary key,
	LNAME nvarchar2(30) constraint L_NAME_NN not null,
	LINTRO nvarchar2(100) constraint L_INTRO_NN not null,
	LCOST number,
	LADDRESS nvarchar2(50) constraint L_ADRESS_NN not null,
	LPHONE nvarchar2(15),
	LOPCL date default SYSDATE,
	LCLOSED date default SYSDATE,
	LPHOTO nvarchar2(50) constraint L_PHOTO_NN not null,
	LORIPHOTO nvarchar2(50) constraint L_ORI_PHOTO_NN not null,
	CHOOSED number,
	REVIEW nvarchar2(50),
	STAR NUMBER CHECK(STAR IN(1, 2, 3, 4, 5)) constraint STAR2_CHECK not null,
	VIEWS number,
	DIVISION NUMBER CHECK(DIVISION IN(1, 2, 3, 4, 5)) constraint DIVISION2_CHECK not null
);
create sequence LANDMARK_SEQ increment by 1 start with 1 nocache;

insert into LANDMARK values(LANDMARK_SEQ.nextval, 'õ���� ����','����3�������� �Ը� ����鿡�� ������ ���� �ֺ��� �������� �־� �㿡 ��å�ϱ� ����',0,'�������� �����߷� 2-15','064-733-1528',default,default,'õ��������.png','õ��������.png', 2,'���� �� �̻���',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '���̳���ưũ���������ڹ���','���� ���� ũ�������� �ڹ���',0,'�������� ��ȭ��654','010-2236-6306',default,default,'���̳���ưũ���������ڹ���.png','���̳���ưũ���������ڹ���.png', 2,'�̻���',3,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '��õ�������𷡻���','�Ϳ��� ���� �������� �ִ� �غ����� ��ȭ�Ӱ� ���ֹٴٸ� ��� �� �ִ� ��',0,'�������� ������ �ŷʸ� 72-18','0',default,default,'��õ�������𷡻���.png','��õ�������𷡻���.png', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�ؽ���ǻ�͹ڹ���','��� ���� ��� ��� �� �ִ� �پ��� ���Ӱ� ��÷�� VR��� ���� ���� �� �ִ� �ڹ���',0,'���ֽ� 1100�� 3198-8','064-745-1994',default,default,'�ؽ���ǻ�͹ڹ���.png','�ؽ���ǻ�͹ڹ���.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������','�Ѷ��� ���� ������� ���� ������ ���� �� �ִ� �ʿ�����',0,'���ֽ� �밭�� ��14-34','064-710-2298',default,default,'�������.png','�������.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','���͵��� �������� �ϸ��� ������ �� �ִ� ��� �ؾȼ��� ���� ��Ư�� ȭ�������� �ִ� ��',0,'���ֽ� �Ѱ�� ��긮 3760','064-772-3334',default,default,'������.png','������.png', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�ֿ��ؾȵ���','������ ���޶��� �غ�, �㿡�� ���� �ϸ��� �� �� �ִ� �ؾȵ���',0,'���ֽ� �ֿ��� �ž��� 2719-3','0',default,default,'�ֿ��ؾȵ���.png','�ֿ��ؾȵ���.png', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '���ŰƼ���Ϸ���','���� ����!�ִ�! ���ŰƼ �� ����',0,'�������� �ȴ��� ��â�� 340','064-792-6114',default,default,'���ŰƼ���Ϸ���.png','���ŰƼ���Ϸ���.png', 2,'GOOD',3,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�����ؼ�����','�Ѵ��غ��� ����� ���޶��� �� ���� �ٴ� ������ ���� ���̵��� ��� ���� ��',0,'���ֽ� �ֿ��� ������ 1565','064-728-3394',default,default,'�����ؼ�����.jpg','�����ؼ�����.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������۸��R','�����Ÿ�� �� ������ ����',0,'�����Ÿ�� �� ������ ����','064-713-1888',default,default,'�������۸��R.jpg','�������۸��R.jpg', 2,'GOOD',1,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������غ�','�̱����� �������� ���� ������ �����غ� �ٴ幰�� ������ ���� ������ �Ҹ��� �ŷ�����',0,'���ֽ� �׿��ؾȷ�60','default',default,default,'�������غ�.jpg','�������غ�.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','�޽�, ����ϱ� ���� ������ ��ǥ ������ �Ѷ�� Ž��ηε� ������',0,'���ֽ� �ƶ�1�� 387','064-724-6830',default,default,'������.jpg','������.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '��������','���ֽùε��� �ϸ� ���',0,'���ֽ� ��������74','064-728-4643',default,default,'��������.jpg','��������.jpg', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','������ ��¡',0,'���ֽ� ������ 19','064-710-6711',default,default,'������.jpg','������.jpg', 2,'GOOD',3,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�����ؾȵ���',' ��� Ư�� �ϸ��� �߰��� �Ƹ����� ������ ���� �α� �ؾȵ���',0,'���ֽ� �����ϵ� 1734','default',default,default,'�����ؾȵ���.jpg','�����ؾȵ���.jpg', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�Ѷ���½�','Ʈ��ŷ�� �Բ� �ڿ����°��� �پ��� ����� ��� �� �ִ� 516���� �αٽ�, ���������ó ',0,'���ֽ� 516�� 2596','064-710-8688',default,default,'�Ѷ���½�.jpg','�Ѷ���½�.jpg', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�쵵','�Ұ� �����ִ� ������ �ϰ� �ִ� ������ ���� ū �μӼ� �Ƹ��ٿ� �غ��� ǳ������ ����',0,'���ֽ� �쵵�� ���� 904-1','064-782-5671',default,default,'�쵵.jpg','�쵵.jpg', 2,'GOOD',3,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�Ѷ�����','���� �� �ڿ� �޾縲',0,'���ֽ� �ƶ�1�� 387','064-724-6830',default,default,'�Ѷ�����.jpg','�Ѷ�����.jpg', 2,'GOOD',2,360,1);
commit;



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



CREATE TABLE XWORD(
WORD VARCHAR2(100) PRIMARY KEY
);


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


insert into REPLY values(1, 1, '���̿�1', '������������������', 0, 0, 1, 0, 1, 1);
insert into REPLY values(2, 1, '���̿�2', '������2������', 0, 0, 1, 0, 1, 1);
insert into REPLY values(3, 1, '���̿�4', '����3������', 0, 0, 1, 0, 1, 1);
insert into REPLY values(4, 1, '���̿�5', '����4������', 0, 0, 1, 0, 1, 2);
insert into REPLY values(5, 1, '���̿�6', '������5��', 0, 0, 1, 0, 1, 3);
insert into REPLY values(6, 2, '���̿�2', '������������������', 0, 0, 1, 0, 2, 1);
insert into REPLY values(7, 3, '���̿�3', '������������������', 0, 0, 2, 0, 1, 1);
insert into REPLY values(8, 4, '���̿�4', '������������������', 0, 0, 2, 0, 2, 1);
insert into REPLY values(9, 5, '���̿�5', '������������������', 0, 0, 3, 0, 1, 1);
insert into REPLY values(10, 6, '���̿�6', '������������������', 0, 0, 3, 0, 2, 1);
insert into REPLY values(11, 1, '���̿�7', '������������������', 0, 0, 4, 0, 1, 3);
insert into REPLY values(12, 2, '���̿�8', '������������������', 0, 0, 5, 0, 1, 2);
insert into REPLY values(13, 3, '���̿�9', '������������������', 0, 0, 6, 0, 1, 2);
