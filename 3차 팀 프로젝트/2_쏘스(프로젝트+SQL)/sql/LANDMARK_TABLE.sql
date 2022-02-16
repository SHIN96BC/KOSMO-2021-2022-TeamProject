drop table LANDMARK;
drop sequence LANDMARK_SEQ;
purge recyclebin;

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
insert into LANDMARK values(LANDMARK_SEQ.nextval, '���̳���ưũ���������ڹ���','���� ���� ũ�������� �ڹ���',0,'�������� ��ȭ��654','010-2236-6306',default,default,'���̳���ưũ���������ڹ���.png','���̳���ưũ���������ڹ���.png', 2,'�̻���',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '��õ�������𷡻���','�Ϳ��� ���� �������� �ִ� �غ����� ��ȭ�Ӱ� ���ֹٴٸ� ��� �� �ִ� ��',0,'�������� ������ �ŷʸ� 72-18','0',default,default,'��õ�������𷡻���.png','��õ�������𷡻���.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�ؽ���ǻ�͹ڹ���','��� ���� ��� ��� �� �ִ� �پ��� ���Ӱ� ��÷�� VR��� ���� ���� �� �ִ� �ڹ���',0,'���ֽ� 1100�� 3198-8','064-745-1994',default,default,'�ؽ���ǻ�͹ڹ���.png','�ؽ���ǻ�͹ڹ���.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������','�Ѷ��� ���� ������� ���� ������ ���� �� �ִ� �ʿ�����',0,'���ֽ� �밭�� ��14-34','064-710-2298',default,default,'�������.png','�������.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','���͵��� �������� �ϸ��� ������ �� �ִ� ��� �ؾȼ��� ���� ��Ư�� ȭ�������� �ִ� ��',0,'���ֽ� �Ѱ�� ��긮 3760','064-772-3334',default,default,'������.png','������.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�ֿ��ؾȵ���','������ ���޶��� �غ�, �㿡�� ���� �ϸ��� �� �� �ִ� �ؾȵ���',0,'���ֽ� �ֿ��� �ž��� 2719-3','0',default,default,'�ֿ��ؾȵ���.png','�ֿ��ؾȵ���.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '���ŰƼ���Ϸ���','���� ����!�ִ�! ���ŰƼ �� ����',0,'�������� �ȴ��� ��â�� 340','064-792-6114',default,default,'���ŰƼ���Ϸ���.png','���ŰƼ���Ϸ���.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�����ؼ�����','�Ѵ��غ��� ����� ���޶��� �� ���� �ٴ� ������ ���� ���̵��� ��� ���� ��',0,'���ֽ� �ֿ��� ������ 1565','064-728-3394',default,default,'�����ؼ�����.jpg','�����ؼ�����.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������۸��R','�����Ÿ�� �� ������ ����',0,'�����Ÿ�� �� ������ ����','064-713-1888',default,default,'�������۸��R.jpg','�������۸��R.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�������غ�','�̱����� �������� ���� ������ �����غ� �ٴ幰�� ������ ���� ������ �Ҹ��� �ŷ�����',0,'���ֽ� �׿��ؾȷ�60','default',default,default,'�������غ�.jpg','�������غ�.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','�޽�, ����ϱ� ���� ������ ��ǥ ������ �Ѷ�� Ž��ηε� ������',0,'���ֽ� �ƶ�1�� 387','064-724-6830',default,default,'������.jpg','������.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '��������','���ֽùε��� �ϸ� ���',0,'���ֽ� ��������74','064-728-4643',default,default,'��������.jpg','��������.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '������','������ ��¡',0,'���ֽ� ������ 19','064-710-6711',default,default,'������.jpg','������.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�����ؾȵ���',' ��� Ư�� �ϸ��� �߰��� �Ƹ����� ������ ���� �α� �ؾȵ���',0,'���ֽ� �����ϵ� 1734','default',default,default,'�����ؾȵ���.jpg','�����ؾȵ���.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�Ѷ���½�','Ʈ��ŷ�� �Բ� �ڿ����°��� �پ��� ����� ��� �� �ִ� 516���� �αٽ�, ���������ó ',0,'���ֽ� 516�� 2596','064-710-8688',default,default,'�Ѷ���½�.jpg','�Ѷ���½�.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�쵵','�Ұ� �����ִ� ������ �ϰ� �ִ� ������ ���� ū �μӼ� �Ƹ��ٿ� �غ��� ǳ������ ����',0,'���ֽ� �쵵�� ���� 904-1','064-782-5671',default,default,'�쵵.jpg','�쵵.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '�Ѷ�����','���� �� �ڿ� �޾縲',0,'���ֽ� �ƶ�1�� 387','064-724-6830',default,default,'�Ѷ�����.jpg','�Ѷ�����.jpg', 2,'GOOD',5,360,1);
commit;
