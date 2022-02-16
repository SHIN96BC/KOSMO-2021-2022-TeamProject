drop table COURSE;
drop sequence COURSE_SEQ;
purge recyclebin;

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

insert into COURSE values(COURSE_SEQ.nextval,'�ٴٸ� �޸���','���޶��� �ٴٸ� ���� ���Ÿ� ���� ���� �ؾȰ�','���ֱ�������->������',10,9,8,1,1,1,1,'�ٴٸ��޸���.png','�ٴٸ��޸���.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'���ֵ� ��������','ī�޶���� ì�ܾ� �� �ݵ�� �����Ÿ� �ڽ�','���ֱ�������->��������',10,9,8,1,1,1,1,'���ֵ� ��������.png','���ֵ� ��������.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'������ ������ ����','������ ������ ������ ��õ ��������','���ֱ�������->�Դ��ؼ�����',10,9,8,1,1,1,1,'������ ������ ����.png','������ ������ ����.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'�� �� �λ���','�����۰��� ��. ������ ���ʿ��� ���� ��� �߰�!','��õ����������->�Դ��ؼ�����',10,9,8,1,1,1,1,'�� �� �λ���.png','�� �� �λ���.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'�߹��� ��¥ ���','ȣ���� ȭ������ ���� �߹� �� �� ����','�����ֻ�����->�ٴٴ�',10,9,8,1,1,1,1,'�߹��� ��¥ ���.png','�߹��� ��¥ ���.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'�ܿ￡�� ���� �� �ִ�','���麸�� ���ֵ���','���̵��鳪������->���������',10,9,8,1,1,1,1,'�ܿ￡�� ���� �� �ִ�.png','�ܿ￡�� ���� �� �ִ�.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'�ʺ��ٴٸ� ����','���� �ݽð�������� ���ƺ���','����->������������',10,9,8,1,1,1,1,'�ʺ��ٴٸ� ����.png','�ʺ��ٴٸ� ����.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'���� �����ϴ� �ֿ�','�ֿ��� ���� �ִ� ������ ����!','�����ؼ�����->�ֿ��ؾȵ���',10,9,8,1,1,1,1,'���� �����ϴ� �ֿ�.png','���� �����ϴ� �ֿ�.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'�ܿ￡ ���� �� ����','������� ���ڸ�����','��ġ���غ�->���ֺ�����������',10,9,8,1,1,1,1,'�ܿ￡ ���� �� ����.png','�ܿ￡ ���� �� ����.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'������ ������','���ָ� ����� ����. ������ ��ȸ!','������ �غ�->���ֱ�������',10,9,8,1,1,1,1,'������ ������.png','������ ������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'���ִ� �Ķ���','�ٴٿ� �ٴ��� ����, �� ���� �ٴ��� �̾߱�','���ֱ�������->�ϵ��غ�',10,9,8,1,1,1,1,'���ִ� �Ķ���.png','���ִ� �Ķ���.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'������ ����','�����屺���� ���, �ݴ� ���, �̽õ����� ���, ��� ������ �����Ʈ','���ɼ����屺����->�����ʱ�',10,9,8,1,1,1,1,'������ ����.png','������ ����.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'�������� ������','���, �̰� �� �غ��� ��! ��õ���� ��ǥ�޴�','�Դ��ؼ�����->�봫�̿���',10,9,8,1,1,1,1,'�������� ������.png','�������� ������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'���� ������ ������','��¥���θ� �� ä�� ������ ����','���������->���ֱ�������',10,9,8,1,1,1,1,'���� ������ ������.png','���� ������ ������.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'�߾��� �����','���࿡ �������� ���� �� �ֳ���? �λ��� 1�ڽ�','���ֱ�������->��ȭ�غ�',10,9,8,1,1,1,1,'�߾��� �����.png','�߾��� �����.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'����³� �� ����','��ٶ��� ġ�� ����, �� �ٸ� �ŷ� �߰��ϱ�','����Ͻ���->�ƶ����Ʈ ��õ, ������',10,9,8,1,1,1,1,'����³� �� ����.png','����³� �� ����.png',1);
COMMIT;