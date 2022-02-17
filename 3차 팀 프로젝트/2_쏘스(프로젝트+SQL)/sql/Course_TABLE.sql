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