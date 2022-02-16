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

insert into COURSE values(COURSE_SEQ.nextval,'바다를 달리다','에메랄드 바다를 따라 볼거리 많은 서쪽 해안가','제주국제공항->수월봉',10,9,8,1,1,1,1,'바다를달리다.png','바다를달리다.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'제주도 사진여행','카메라부터 챙겨야 할 반드시 찍을거리 코스','제주국제공항->판포포구',10,9,8,1,1,1,1,'제주도 사진여행.png','제주도 사진여행.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'설레는 여행의 시작','여행의 시작은 현지인 추천 맛집부터','제주국제공항->함덕해수욕장',10,9,8,1,1,1,1,'설레는 여행의 시작.png','설레는 여행의 시작.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'막 찍어도 인생샷','사진작가인 줄. 제주의 동쪽에서 사진 재능 발견!','조천스위스마을->함덕해수욕장',10,9,8,1,1,1,1,'막 찍어도 인생샷.png','막 찍어도 인생샷.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'중문의 진짜 모습','호텔의 화려함을 지운 중문 맨 얼굴 보기','대포주상절리->바다다',10,9,8,1,1,1,1,'중문의 진짜 모습.png','중문의 진짜 모습.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'겨울에만 만날 수 있는','동백보고 감귤따고','위미동백나무군락->성산일출봉',10,9,8,1,1,1,1,'겨울에만 만날 수 있는.png','겨울에만 만날 수 있는.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'쪽빛바다를 보러','제주 반시계방향으로 돌아보기','노라바->제주조각공원',10,9,8,1,1,1,1,'쪽빛바다를 보러.png','쪽빛바다를 보러.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'나를 위로하는 애월','애월이 엣지 있는 이유는 힐링!','곽지해수욕장->애월해안도로',10,9,8,1,1,1,1,'나를 위로하는 애월.png','나를 위로하는 애월.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'겨울에 가면 더 좋은','일출부터 별자리까지','광치기해변->제주별빛누리공원',10,9,8,1,1,1,1,'겨울에 가면 더 좋은.png','겨울에 가면 더 좋은.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'여행의 끝에서','제주를 기억할 사진. 마지막 기회!','월정리 해변->제주국제공항',10,9,8,1,1,1,1,'여행의 끝에서.png','여행의 끝에서.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'제주는 파랗다','바다와 바다의 연결, 끝 없는 바다의 이야기','제주국제공항->하도해변',10,9,8,1,1,1,1,'제주는 파랗다.png','제주는 파랗다.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'포토존 투어','선인장군락지 찍고, 금능 찍고, 이시돌목장 찍고, 찍고 찍히는 포토루트','월령선인장군락지->더럭초교',10,9,8,1,1,1,1,'포토존 투어.png','포토존 투어.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'동쪽으로 오세요','어머, 이건 꼭 해봐야 돼! 조천구좌 대표메뉴','함덕해수욕장->용눈이오름',10,9,8,1,1,1,1,'동쪽으로 오세요.png','동쪽으로 오세요.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'동부 여행의 마무리','알짜배기로만 꽉 채운 마무리 일정','성산일출봉->제주국제공항',10,9,8,1,1,1,1,'동부 여행의 마무리.png','동부 여행의 마무리.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'추억을 남기다','여행에 사진말고 뭐가 또 있나요? 인생샷 1코스','제주국제공항->세화해변',10,9,8,1,1,1,1,'추억을 남기다.png','추억을 남기다.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'비오는날 더 예쁜','비바람이 치는 제주, 또 다른 매력 발견하기','사려니숲길->아라고나이트 온천, 수영장',10,9,8,1,1,1,1,'비오는날 더 예쁜.png','비오는날 더 예쁜.png',1);
COMMIT;