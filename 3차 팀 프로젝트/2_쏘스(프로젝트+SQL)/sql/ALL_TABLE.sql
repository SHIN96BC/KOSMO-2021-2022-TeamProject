
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
insert into member values ('qaz77@naver.com' , MEM_NUM_SEQ.nextval , '관리' , SYSDATE , '123' , 'admin' , '관리', 10101 , '안양시' , 0 , SYSDATE , 0 , 0 , 0);


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

insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'쇠소각', '민물과 바닷물이 만나는 곳에 위치한',0,'서귀포시 하효동','064-732-1562',default,default,'쇠소각.png','쇠소각.png', 1,'나름 괜찮았어요',5,300,1);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'크라이 오유','여행의 피로를 풀고 싶다면',70000,'제주시 노형동 3785-1','070-7543-8378',default,default,'크라이오유.jpeg','크라이오유.jpeg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주카약 올레','한담해변 에메랄드 빛 바다를 내려다보며 즐길 수 있는 최고의 액티비티',0,'제주시 애월읍 애월리 2490-1','010-4683-6492',default,default,'제주카약올레.png','제주카약올레.png',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'빅볼랜드', '한라산 중산간에서 즐기는 수중액티비티!',0,'제주시 산록서로 15','1588-6418',default,default,'빅볼랜드.jpg','빅볼랜드.jpg', 1,'나름 괜찮았어요',5,300,1);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'산방선유람선','산방산과 송악산 인근 해안의 절경을 감상할 수 있는 유람선 제주여행의 필수코스',70000,'서귀포시 안덕면 화순해안로106번길 16','064-792-1188',default,default,'산방선유람선.jpg','산방선유람선.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주야생돌고래탐사','제주바다를 가장 잘 아는 선장님과 함께 야생돌고래를 찾아 모험을 떠나요.',0,'서귀포시 동일하모로 98번길14-32','050-5558-3838',default,default,'제주야생돌고래탐사.jpg','제주야생돌고래탐사.jpg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'점보빌리지', '제주에서 즐기는 코끼리쇼와 이국의 정취',0,'서귀포시 안덕면 평화로319번길 31-11','064-792-1233',default,default,'점보빌리지.jpg','점보빌리지.jpg', 1,'나름 괜찮았어요',3,300,1);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'새별헤이요목장','동물친구들과의 휴식과 힐링의 시간',70000,'제주시 봉성리 4554-20','064-794-2828',default,default,'새별헤이요목장.jpg','새별헤이요목장.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'한라산소주투어','한라산과 함께하는 우아한 소주여행',0,'제주시 한림로555','064-729-1958',default,default,'한라산소주투어.jpg','한라산소주투어.jpg',10,'피로 풀려요',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주바다하늘다이브센터','스킨스쿠버의 매력속으로~ 바다속으로 풍덩!',0,'제주시 도두3길 20','064-702-2664',default,default,'제주바다하늘다이브센터.jpg','제주바다하늘다이브센터.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'수목원테마파크','짜릿한 즐거움을 무한대로 즐겨라! 수목원테마파크',0,'제주시 제주시 은수길 69','064-742-3700',default,default,'수목원테마파크.jpg','수목원테마파크.jpg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'아침미소목장','아이들과 함께하는 목장체험',0,'제주시 월평동 155','064-727-2545',default,default,'아침미소목장.jpg','아침미소목장.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'돈키쥬쥬','다양한 동물과 교감하는',0,'제주시 아라2동 113-1','064-755-5920',default,default,'돈키쥬쥬.jpg','돈키쥬쥬.jpg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'이호캔들','푸른 밤 은하수처럼 빛나는 바다를 담은',0,'제주시 제주시 서해안로 66, 2층','010-2907-2754',default,default,'이호캔들.jpg','이호캔들.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'삼다수목장','제주의 푸른 자연 속을 달리는 승마',0,'제주시 비자림로 485-15','064-784-1441',default,default,'삼다수목장.jpg','삼다수목장.jpg',10,'피로 풀려요',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'성읍민속마을','주민들이 실제 거주하고 있는 민속촌',0,'서귀포시 성읍정의현로19','064-710-6797',default,default,'성읍민속마을.jpg','성읍민속마을.jpg',10,'피로 풀려요',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'쇠소깍제트보트','롤러코스터보다 재미있는 제트보트',0,'서귀포시 하효동 999-3','064-733-0251',default,default,'쇠소깍제트보트.jpg','쇠소깍제트보트.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'중문그랑블루요트','국내 최대 초특급 럭서리 요트',0,'서귀포시 서귀포시 대포로 172-7','064-739-7776',default,default,'중문그랑블루요트.jpg','중문그랑블루요트.jpg',10,'피로 풀려요',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'우도잠수함','아름다운 해저여행의 추억',0,'서귀포시 성산읍 성산리 347-9','064-784-2333',default,default,'우도잠수함.jpg','우도잠수함.jpg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'최남단감귤체험농장','테마가 있는 최남단체험',0,'서귀포시 남위남성로 168','064-764-7759',default,default,'최남단감귤체험농장.jpg','최남단감귤체험농장.jpg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주레일바이크','유명 오름과 성산일출봉 등을 볼 수 있는 액티비티 자동으로',0,'제주시 용눈이오름로 641','064-783-0033',default,default,'제주레일바이크.jpg','제주레일바이크.jpg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'뷰제주하늘','제주도 오름을 달리는 이색체험',0,'서귀포시 성산읍 서성일로 397','064-784-3631',default,default,'뷰제주하늘.jpg','뷰제주하늘.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'로봇스퀘어','직접 만지며 조종할 수 있는 로봇전시관',0,'제주시 해맞이해안로 1032','064-783-0825',default,default,'로봇스퀘어.jpg','로봇스퀘어.jpg',10,'피로 풀려요',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'국제리더스클럽','사계절 해양레포츠 테마파크',0,'제주시 신흥리 1-11','064-783-0000',default,default,'성읍민속마을.jpg','성읍민속마을.jpg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'김녕요트','요트에서 즐기는 제주의 풍광',0,'제주시 구좌해안로 229-16','064-725-0225',default,default,'쇠소깍제트보트.jpg','쇠소깍제트보트.jpg',10,'피로 풀려요',1,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주오프로드','야생의 모습을 간직한 곶자왈과 환상적인 선새미못의 풍광을 배경으로 짜릿한 오프로드를 즐겨요',0,'제주시 선흘리 624-4 제라진캠프','0507-1429-7912',default,default,'제주오프로드.jpg','제주오프로드.jpg',10,'피로 풀려요',4,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'청초밭','자연속 삼나무 숲길',0,'서귀포시 성읍이리로57번길 34','064-787-7811',default,default,'청초밭.jpg','청초밭.jpg',10,'피로 풀려요',3,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'서귀포유람선','범섬, 외돌개, 정방폭포 등 서귀포 해안의 절경을 감상할 수 있는 유람선',0,'서귀포시 남성중로 40','064-732-1717',default,default,'서귀포유람선.jpg','서귀포유람선.jpg',10,'피로 풀려요',2,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'목장카페드르쿰다','거침없이 제주의 초원을 달린다',0,'서귀포시 번영로 2454','064-787-5220',default,default,'목장카페드르쿰다.jpg','목장카페드르쿰다.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'성읍민속마을','주민들이 실제 거주하고 있는 민속촌',0,'서귀포시 성읍정의현로19','064-710-6797',default,default,'성읍민속마을.jpg','성읍민속마을.jpg',10,'피로 풀려요',5,5,2);

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

insert into FOOD values(FOOD_SEQ.nextval, '퐁낭그늘', '멜튀김, 전, 매콤한 안주에 얼음생맥주 한 잔이면 게임 끝!',5000,'제주시 성신로 30','050714395792',default,default,default,'퐁낭그늘.png','퐁낭그늘.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '쿤도', '얼큰한 국물이 먹고 싶을땐 쿤도 짬뽕라멘',5000,'제주시 화삼로1길17','07089002486',default,default,default,'쿤도.png','쿤도.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '형제갈비', '숯불에 구워서 배달하는 양념갈비 맛집',5000,'제주시 은남4길41','0647487078',default,default,default,'형제갈비.png','형제갈비.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '엄블랑호다', '잔잔히 즐기기에 분위기 좋은~ 그런 곳',5000,'제주시 사장길 15 1층','050431391345',default,default,default,'엄블랑호다.png','엄블랑호다.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '메밀꽃차롱', '방송 출연한 제주의 이색적인 꿩요리 맛집',5000,'제주시 연오로 136','0647116841',default,default,default,'메밀꽃차롱.png','메밀꽃차롱.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '우리양', '참숮으로 구운 최고 품질의 양고기를 맛보세요',5000,'제주시 성신로1길 23,1층','0647442326',default,default,default,'우리양.png','우리양.png', 1,'맛있어요',3,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '만선바다', '고등어회 전문 제주 향토음식점',5000,'제주시 삼무로1길6','0647426300',default,default,default,'만선바다.png','만선바다.png', 1,'맛있어요',3,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '연동길', '매콤한 낙지로 스트레스 날려보세요',5000,'제주시 은남2길 23','0647489363',default,default,default,'연동길.png','연동길.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '도리스', '캐나다에 있는 듯한 제주 세계맥주 끝판왕!',5000,'제주시 삼무로40','0649010755',default,default,default,'도리스.png','도리스.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '양푼왕갈비', '든든한 양푼 왕갈비에, 밥까지 볶아먹으면 예술이쥬',5000,'제주시 선덕로14','050714053663',default,default,default,'양푼왕갈비.png','양푼왕갈비.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '서광마을국수', '면 종류별로 취향껏 골라 잡숴봐',5000,'제주시 서해안로 356','0647135999',default,default,default,'서광마을국수.png','서광마을국수.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '파도국수', '맛, 가성비, 서비스 모두 완벽한 공항근처 신상 맛집',5000,'제주시 신대로15길 2 1층','0647491611',default,default,default,'파도국수.png','파도국수.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '신흥관', '든든한 양푼 왕갈비에, 밥까지 볶아먹으면 예술이쥬',5000,'제주시 선덕로14','050714053663',default,default,default,'신흥관.png','신흥관.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '포동정식', '맛과 가성비에 마음도 배도 포동포동',5000,'제주시 문송길 18,1층','0647124152',default,default,default,'포동정식.png','포동정식.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '수목원집밥', '집밥이 먹고 싶을땐 여기로 오세요',5000,'제주시 삼무로82 1층','0647424483',default,default,default,'수목원집밥.png','수목원집밥.png', 1,'맛있어요',2,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '이순애소문난순대국밥', '든든한 양푼 왕갈비에, 밥까지 볶아먹으면 예술이쥬',5000,'제주시 선덕로14','050714053663',default,default,default,'이순애소문난순대국밥.png','이순애소문난순대국밥.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '착한튀김', '유명한 튀김맛집착한튀김',5000,'제주시 진남로6길 20','0647233392',default,default,default,'착한튀김.png','착한튀김.png', 1,'맛있어요',3,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '미송식탁', '매운돼지찌개로 매콤하게 스트레스 날리자!',5000,'제주시 삼무로 11길','050714111028',default,default,default,'미송식탁.png','미송식탁.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '소담선', '나만 알고싶은 맛집 소담선',5000,'제주시 진남로6길3','01043378238',default,default,default,'소담선.png','소담선.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '우리집밥상', '집밥이 드시고 싶다면 우리집밥상으로 ',5000,'제주시 신대로13길19','0647459252',default,default,default,'우리집밥상.png','우리집밥상.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '소랑분식', '공항 근처에서 간단히 아침 해결하기 좋은 분식집',5000,'제주시 신대로67','0647487998',default,default,default,'소랑분식.png','소랑분식.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '해피누들', '먹는내내 행복한! 해피누들 쌀국수',5000,'제주시 화남로47','01025263206',default,default,default,'해피누들.png','해피누들.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '석정삼계탕', '토종닭으로 즐기는 진정한 보양식',5000,'제주시 진서로33-3','0647566076',default,default,default,'석정삼계탕.png','석정삼계탕.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '신화조개앤횟집', '여행와서 먹는 조개구이 맛이 제일 최고인 거 알쥬',5000,'제주시 진남로6길3','01043378238',default,default,default,'신화조개앤횟집.png','신화조개앤횟집.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '고창댁풍천장어낙지', '화북의 장어/갈비/장어탕 몸보신 총집합 맛집',5000,'제주시 신대로13길19','0647459252',default,default,default,'고창댁풍천장어낙지.png','고창댁풍천장어낙지.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '달빛에구은고등어', '먹으면 입 안에서 고등어가 춤추는 맛 ',5000,'제주시 신대로67','0647487998',default,default,default,'달빛에구은고등어.png','달빛에구은고등어.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '미풍해장국', '소고기 선지해장국 전문점, 미풍해장국이여라',5000,'제주시 화남로47','01025263206',default,default,default,'미풍해장국.png','미풍해장국.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '한라산국수', '제주에 이보다 더 값진 갈비 고기국수가 어디 있으랴!',5000,'제주시 진서로33-3','0647566076',default,default,default,'한라산국수.png','한라산국수.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '송촌초밥', '싱싱한 초밥과 회가 제주도 제일입니다',5000,'제주시 태성로4길1','0647246768',default,default,default,'송촌초밥.png','송촌초밥.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '꽃담은소', '고기에 꽃이 피다',5000,'제주시 연삼로 537-1 1층','050714036699',default,default,default,'꽃담은소.png','꽃담은소.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '후레쉬돈까스', '먹어봐 흑돼지피자돈까스 여기가 바로 이색 돈까스맛집',5000,'제주시 서광로2길 33','0647277555',default,default,default,'후레쉬돈까스.png','후레쉬돈까스.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '수까락', '한 곳에서 즐기는 차와 식사의 여유로운 만남',5000,'제주시 한천로33','0647497113',default,default,default,'수까락.png','수까락.png', 1,'맛있어요',3,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '동진식당', '탐나는 한 그릇 행복을 드립니다.',5000,'제주시 용화로 51-1','0647422226',default,default,default,'동진식당.png','동진식당.png', 1,'맛있어요',2,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '부가네얼큰이', '매운 음식이 생각날 땐 부가네얼큰이로',5000,'제주시 남성로 46','0647229299',default,default,default,'부가네얼큰이.png','부가네얼큰이.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '태양상회', '인싸 인증 필수코스세상 Hip한 갬성 술집',5000,'제주시 중앙로2길 31','050713742268',default,default,default,'태양상회.png','태양상회.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '돌하르방밀면', '밀면과 보말칼국수를 함께 즐기고 싶다면 여기로!',5000,'중문관광로331','0647390023',default,default,default,'돌하르방밀면.png','돌하르방밀면.png', 1,'맛있어요',4,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '하루방보쌈', '보쌈하면 무조건 하루방보쌈! 현지인 찐맛집',5000,'제주시 중앙로2길 9','0647527890',default,default,default,'수까락.png','수까락.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '백년귤화다', '청년농부가 만든 착한가격, 건강 먹거리',5000,'제주시 중앙로11길1','01064868640',default,default,default,'백년귤화다.png','백년귤화다.png', 1,'맛있어요',5,300,1);
insert into FOOD values(FOOD_SEQ.nextval, '각지불', '시각적 포만감부터 남다른 해물찜',5000,'제주시 조천읍 남조로1751','0647840809',default,default,default,'각지불.png','각지불.png', 1,'맛있어요',4,300,1);

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

insert into LANDMARK values(LANDMARK_SEQ.nextval, '천지연 폭포','제주3대폭포중 규모나 경관면에서 으뜸인 폭포 주변에 새연교가 있어 밤에 산책하기 좋음',0,'서귀포시 남성중로 2-15','064-733-1528',default,default,'천지연폭포.png','천지연폭포.png', 2,'폭포 넘 이뻐요',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '바이나흐튼크리스마스박물관','국내 최초 크리스마스 박물관',0,'서귀포시 평화로654','010-2236-6306',default,default,'바이나흐튼크리스마스박물관.png','바이나흐튼크리스마스박물관.png', 2,'이뻐요',3,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '공천포검은모래사장','귀여운 몽돌 방파제가 있는 해변으로 평화롭게 제주바다를 즐길 수 있는 곳',0,'서귀포시 남원읍 신례리 72-18','0',default,default,'공천포검은모래사장.png','공천포검은모래사장.png', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '넥슨컴퓨터박물관','어른과 아이 모두 즐길 수 있는 다양한 게임과 최첨단 VR기술 등을 접할 수 있는 박물관',0,'제주시 1100로 3198-8','064-745-1994',default,default,'넥슨컴퓨터박물관.png','넥슨컴퓨터박물관.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '마방목지','한라산과 말을 배경으로 멋진 사진을 찍을 수 있는 초원지대',0,'제주시 용강동 산14-34','064-710-2298',default,default,'마방목지.png','마방목지.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '수월봉','차귀도로 떨어지는 일몰을 감상할 수 있는 명소 해안선을 따라 독특한 화산지형이 있는 곳',0,'제주시 한경면 고산리 3760','064-772-3334',default,default,'수월봉.png','수월봉.png', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '애월해안도로','낮에는 에메랄드 해변, 밤에는 멋진 일몰을 볼 수 있는 해안도로',0,'제주시 애월읍 신엄리 2719-3','0',default,default,'애월해안도로.png','애월해안도로.png', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '헬로키티아일랜드','국내 최초!최대! 헬로키티 상설 전시',0,'서귀포시 안덕면 한창로 340','064-792-6114',default,default,'헬로키티아일랜드.png','헬로키티아일랜드.png', 2,'GOOD',3,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '곽지해수욕장','한담해변과 연결된 에메랄드 빛 예쁜 바다 수심이 낮아 아이들이 놀기 좋은 곳',0,'제주시 애월읍 곽지리 1565','064-728-3394',default,default,'곽지해수욕장.jpg','곽지해수욕장.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '노형수퍼마켙','어반판타지 더 포가든 도어',0,'어반판타지 더 포가든 도어','064-713-1888',default,default,'노형수퍼마켙.jpg','노형수퍼마켙.jpg', 2,'GOOD',1,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '알작지해변','이국적인 분위기의 제주 유일의 몽돌해변 바닷물과 몽돌이 내는 경쾌한 소리가 매력적임',0,'제주시 테우해안로60','default',default,default,'알작지해변.jpg','알작지해변.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '관음사','휴식, 명상하기 좋은 제주의 대표 사찰로 한라산 탐방로로도 유명함',0,'제주시 아라1동 387','064-724-6830',default,default,'관음사.jpg','관음사.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '사라봉공원','제주시민들의 일몰 명소',0,'제주시 사라봉동길74','064-728-4643',default,default,'사라봉공원.jpg','사라봉공원.jpg', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '관덕정','제주의 상징',0,'제주시 관덕로 19','064-710-6711',default,default,'관덕정.jpg','관덕정.jpg', 2,'GOOD',3,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '도두해안도로',' 경관 특히 일몰과 야경이 아름답기로 유명한 공항 인근 해안도로',0,'제주시 도두일동 1734','default',default,default,'도두해안도로.jpg','도두해안도로.jpg', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '한라생태숲','트래킹과 함께 자연생태계의 다양한 모습을 즐길 수 있는 516도로 인근숲, 마방목지근처 ',0,'제주시 516로 2596','064-710-8688',default,default,'한라생태숲.jpg','한라생태숲.jpg', 2,'GOOD',4,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '우도','소가 누워있는 형상을 하고 있는 제주의 가장 큰 부속섬 아름다운 해변과 풍광으로 유명',0,'제주시 우도면 연평리 904-1','064-782-5671',default,default,'우도.jpg','우도.jpg', 2,'GOOD',3,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '한라수목원','도심 속 자연 휴양림',0,'제주시 아라1동 387','064-724-6830',default,default,'한라수목원.jpg','한라수목원.jpg', 2,'GOOD',2,360,1);
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


insert into REPLY values(1, 1, '하이요1', '맛집집집집집집집지', 0, 0, 1, 0, 1, 1);
insert into REPLY values(2, 1, '하이요2', '맛집집2집집지', 0, 0, 1, 0, 1, 1);
insert into REPLY values(3, 1, '하이요4', '맛집3집집지', 0, 0, 1, 0, 1, 1);
insert into REPLY values(4, 1, '하이요5', '맛집4집집지', 0, 0, 1, 0, 1, 2);
insert into REPLY values(5, 1, '하이요6', '맛집집5지', 0, 0, 1, 0, 1, 3);
insert into REPLY values(6, 2, '하이요2', '맛집집집집집집집지', 0, 0, 1, 0, 2, 1);
insert into REPLY values(7, 3, '하이요3', '맛집집집집집집집지', 0, 0, 2, 0, 1, 1);
insert into REPLY values(8, 4, '하이요4', '맛집집집집집집집지', 0, 0, 2, 0, 2, 1);
insert into REPLY values(9, 5, '하이요5', '맛집집집집집집집지', 0, 0, 3, 0, 1, 1);
insert into REPLY values(10, 6, '하이요6', '맛집집집집집집집지', 0, 0, 3, 0, 2, 1);
insert into REPLY values(11, 1, '하이요7', '맛집집집집집집집지', 0, 0, 4, 0, 1, 3);
insert into REPLY values(12, 2, '하이요8', '맛집집집집집집집지', 0, 0, 5, 0, 1, 2);
insert into REPLY values(13, 3, '하이요9', '맛집집집집집집집지', 0, 0, 6, 0, 1, 2);
