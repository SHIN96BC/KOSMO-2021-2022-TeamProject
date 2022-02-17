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

insert into COURSE values(COURSE_SEQ.nextval,'바다를 달리다','에메랄드 바다를 따라 볼거리 많은 서쪽 해안가','제주국제공항->수월봉',10,46,8,1,1,1,1,'바다를 달리다.png','바다를 달리다.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'제주도 사진여행','카메라부터 챙겨야 할 반드시 찍을거리 코스','제주국제공항->판포포구',9,23,8,1,1,1,1,'제주도 사진여행.png','제주도 사진여행.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'설레는 여행의 시작','여행의 시작은 현지인 추천 맛집부터','제주국제공항->함덕해수욕장',8,22,8,1,1,1,1,'설레는 여행의 시작.png','설레는 여행의 시작.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'막 찍어도 인생샷','사진작가인 줄. 제주의 동쪽에서 사진 재능 발견!','조천스위스마을->함덕해수욕장',7,82,8,1,1,1,1,'막 찍어도 인생샷.png','막 찍어도 인생샷.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'중문의 진짜 모습','호텔의 화려함을 지운 중문 맨 얼굴 보기','대포주상절리->바다다',16,28,8,1,1,1,1,'중문의 진짜 모습.png','중문의 진짜 모습.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'겨울에만 만날 수 있는','동백보고 감귤따고','위미동백나무군락->성산일출봉',15,52,8,1,1,1,1,'겨울에만 만날 수 있는.png','겨울에만 만날 수 있는.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'쪽빛바다를 보러','제주 반시계방향으로 돌아보기','노라바->제주조각공원',14,51,8,1,1,1,1,'쪽빛바다를 보러.png','쪽빛바다를 보러.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'나를 위로하는 애월','애월이 엣지 있는 이유는 힐링!','곽지해수욕장->애월해안도로',13,55,8,1,1,1,1,'나를 위로하는 애월.png','나를 위로하는 애월.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'겨울에 가면 더 좋은','일출부터 별자리까지','광치기해변->제주별빛누리공원',12,53,8,1,1,1,1,'겨울에 가면 더 좋은.png','겨울에 가면 더 좋은.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'여행의 끝에서','제주를 기억할 사진. 마지막 기회!','월정리 해변->제주국제공항',11,83,8,1,1,1,1,'여행의 끝에서.png','여행의 끝에서.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'제주는 파랗다','바다와 바다의 연결, 끝 없는 바다의 이야기','제주국제공항->하도해변',20,11,8,1,1,1,1,'제주는 파랗다.png','제주는 파랗다.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'포토존 투어','선인장군락지 찍고, 금능 찍고, 이시돌목장 찍고, 찍고 찍히는 포토루트','월령선인장군락지->더럭초교',19,99,8,1,1,1,1,'포토존 투어.png','포토존 투어.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'동쪽으로 오세요','어머, 이건 꼭 해봐야 돼! 조천구좌 대표메뉴','함덕해수욕장->용눈이오름',19,88,8,1,1,1,1,'동쪽으로 오세요.png','동쪽으로 오세요.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'동부 여행의 마무리','알짜배기로만 꽉 채운 마무리 일정','성산일출봉->제주국제공항',18,77,8,1,1,1,1,'동부 여행의 마무리.png','동부 여행의 마무리.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'비오는날 더 예쁜','비바람이 치는 제주, 또 다른 매력 발견하기','사려니숲길->아라고나이트 온천, 수영장',17,66,8,1,1,1,1,'비오는날 더 예쁜.png','비오는날 더 예쁜.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'제주의 푸르름 가득','달려라! 제주의 서쪽 여름을','수월봉->이호테우해수욕장',6,84,8,1,1,1,1,'제주의 푸르름 가득.png','제주의 푸르름 가득.png',3);
insert into COURSE values(COURSE_SEQ.nextval,'제주의 역사와 함께','제주의 아픔을 기억하는 여행','4.3평화공원->제주돌문화공원',15,65,8,1,1,1,1,'제주의 역사와 함께.png','제주의 역사와 함께.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'오름덕후를 위해','더운여름 오름덕후 여행코스','산굼부리->다랑쉬오름',14,54,8,1,1,1,1,'오름덕후를 위해.png','오름덕후를 위해.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'제주도 미술관 투어','바다처럼 품어온 제주 예술 이야기','섭지코지->이중섭거리',11,59,8,1,1,1,1,'제주도 미술관 투어.png','제주도 미술관 투어.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'당신을 위로하는','치유와 명상의 서귀포 길','치유의숲->법환포구',11,39,8,1,1,1,1,'당신을 위로하는.png','당신을 위로하는.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'한라산을 따라서','태고의 신비, 한라산과 가까워지기','마방목지->진돼지',11,19,8,1,1,1,1,'한라산을 따라서.png','한라산을 따라서.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'제주의 야경 즐기기','아이들과 함께 제주시의 야경 즐기기 코스','알작지해변->도두해안도로',30,59,8,1,1,1,1,'제주의 야경 즐기기.png','제주의 야경 즐기기.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'제주의 한컷! 사진 맛집 코스','랜드마크에서 인생샷 찍기','이호테우해수욕장->수목원테마파크',31,79,8,1,1,1,1,'제주의 한컷! 사진 맛집 코스.png','제주의 한컷! 사진 맛집 코스.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'여행을 기념하며','친애할 제주의 사진과 물건 담기','쇠소깍->제주국제공항',33,77,8,1,1,1,1,'여행을 기념하며.png','여행을 기념하며.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'드라마 주인공처럼','운치있게 나홀로 사색하기','제주도립미술관->선운정사',34,76,8,1,1,1,1,'드라마 주인공처럼.png','드라마 주인공처럼.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'계단이 적은 여행지들','휠체어, 평지, 걷기편한곳','아쿠아플라넷제주->박물관은살아있다',35,75,8,1,1,1,1,'계단이 적은 여행지들.png','계단이 적은 여행지들.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'제주의 일출을 품고','마무리는 동문시장 군것질로','광치기해변->제주국제공항',36,74,8,1,1,1,1,'제주의 일출을 품고.png','제주의 일출을 품고.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'아이들 웃음 가득','아이들도 즐거워하는 제주의 동쪽','에코랜드->함덕해수욕장',37,38,8,1,1,1,1,'아이들 웃음 가득.png','아이들 웃음 가득.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'여유있는 차 한 잔','피로를 감쪽같이 지우고, 우아하게 일상으로 돌아가기','벨롱장->제주국제공항',15,34,8,1,1,1,1,'여유있는 차 한 잔.png','여유있는 차 한 잔.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'대중교통으로 충분해','뚜벅이 서귀포 가다','천지연폭포->성산일출봉',16,32,8,1,1,1,1,'대중교통으로 충분해.png','대중교통으로 충분해.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'뚜벅이의 버스여행','떠도는 것은 마음 그리고 버스','월정리해변->함덕해수욕장',17,53,8,1,1,1,1,'뚜벅이의 버스여행.png','뚜벅이의 버스여행.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'설레는 겨울여행 첫날','시작부터 제주 느낌 물씬','제주국제공항->제주추사관',18,75,8,1,1,1,1,'설레는 겨울여행 첫날.png','설레는 겨울여행 첫날.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'추울땐 따뜻한 남쪽여행','마무리는 뜨끈뜨끈한 올레시장 군것질로!','여미지식물원->쇠소깍',19,25,8,1,1,1,1,'추울땐 따뜻한 남쪽여행.png','추울땐 따뜻한 남쪽여행.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'내 마음 들여다보기','사찰 따라 떠나는 마음여행, 제주자연 1코스','쇠소깍->용머리해안',10,45,8,1,1,1,1,'내 마음 들여다보기.png','내 마음 들여다보기.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'더 핫한 서귀포','여름 볼거리 많은 서귀포 대표 코스','이중섭거리->새연교',11,54,8,1,1,1,1,'더 핫한 서귀포.png','더 핫한 서귀포.png',4);
insert into COURSE values(COURSE_SEQ.nextval,'제주가 처음이라면','처음 만나는 제주와 친구 되기','제주국제공항->중문색달해변',5,14,8,1,1,1,1,'제주가 처음이라면.png','제주가 처음이라면.png',2);
insert into COURSE values(COURSE_SEQ.nextval,'한 걸음 더 가까이','게으른 이들을 위해, 느긋한 제주여행 2코스','섭지코지->함덕해수욕장',6,85,8,1,1,1,1,'한 걸음 더 가까이.png','한 걸음 더 가까이.png',5);
insert into COURSE values(COURSE_SEQ.nextval,'숲과 바다 모두','제주를 시계방향으로 돌며 힐링하기','절물자연휴양림->김녕해수욕장',7,64,8,1,1,1,1,'숲과 바다 모두.png','숲과 바다 모두.png',1);
insert into COURSE values(COURSE_SEQ.nextval,'가을 포토스팟 모음','가을 억새에서 에메랄드 바다까지','산굼부리->성산일출봉',8,55,8,1,1,1,1,'가을 포토스팟 모음.png','가을 포토스팟 모음.png',1);
COMMIT;