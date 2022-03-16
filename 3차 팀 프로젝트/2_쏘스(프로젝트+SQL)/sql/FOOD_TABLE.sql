drop table FOOD;
drop sequence FOOD_SEQ;
purge recyclebin;

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