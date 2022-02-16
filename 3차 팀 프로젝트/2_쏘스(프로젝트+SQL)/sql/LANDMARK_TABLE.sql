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

insert into LANDMARK values(LANDMARK_SEQ.nextval, '천지연 폭포','제주3대폭포중 규모나 경관면에서 으뜸인 폭포 주변에 새연교가 있어 밤에 산책하기 좋음',0,'서귀포시 남성중로 2-15','064-733-1528',default,default,'천지연폭포.png','천지연폭포.png', 2,'폭포 넘 이뻐요',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '바이나흐튼크리스마스박물관','국내 최초 크리스마스 박물관',0,'서귀포시 평화로654','010-2236-6306',default,default,'바이나흐튼크리스마스박물관.png','바이나흐튼크리스마스박물관.png', 2,'이뻐요',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '공천포검은모래사장','귀여운 몽돌 방파제가 있는 해변으로 평화롭게 제주바다를 즐길 수 있는 곳',0,'서귀포시 남원읍 신례리 72-18','0',default,default,'공천포검은모래사장.png','공천포검은모래사장.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '넥슨컴퓨터박물관','어른과 아이 모두 즐길 수 있는 다양한 게임과 최첨단 VR기술 등을 접할 수 있는 박물관',0,'제주시 1100로 3198-8','064-745-1994',default,default,'넥슨컴퓨터박물관.png','넥슨컴퓨터박물관.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '마방목지','한라산과 말을 배경으로 멋진 사진을 찍을 수 있는 초원지대',0,'제주시 용강동 산14-34','064-710-2298',default,default,'마방목지.png','마방목지.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '수월봉','차귀도로 떨어지는 일몰을 감상할 수 있는 명소 해안선을 따라 독특한 화산지형이 있는 곳',0,'제주시 한경면 고산리 3760','064-772-3334',default,default,'수월봉.png','수월봉.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '애월해안도로','낮에는 에메랄드 해변, 밤에는 멋진 일몰을 볼 수 있는 해안도로',0,'제주시 애월읍 신엄리 2719-3','0',default,default,'애월해안도로.png','애월해안도로.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '헬로키티아일랜드','국내 최초!최대! 헬로키티 상설 전시',0,'서귀포시 안덕면 한창로 340','064-792-6114',default,default,'헬로키티아일랜드.png','헬로키티아일랜드.png', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '곽지해수욕장','한담해변과 연결된 에메랄드 빛 예쁜 바다 수심이 낮아 아이들이 놀기 좋은 곳',0,'제주시 애월읍 곽지리 1565','064-728-3394',default,default,'곽지해수욕장.jpg','곽지해수욕장.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '노형수퍼마켙','어반판타지 더 포가든 도어',0,'어반판타지 더 포가든 도어','064-713-1888',default,default,'노형수퍼마켙.jpg','노형수퍼마켙.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '알작지해변','이국적인 분위기의 제주 유일의 몽돌해변 바닷물과 몽돌이 내는 경쾌한 소리가 매력적임',0,'제주시 테우해안로60','default',default,default,'알작지해변.jpg','알작지해변.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '관음사','휴식, 명상하기 좋은 제주의 대표 사찰로 한라산 탐방로로도 유명함',0,'제주시 아라1동 387','064-724-6830',default,default,'관음사.jpg','관음사.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '사라봉공원','제주시민들의 일몰 명소',0,'제주시 사라봉동길74','064-728-4643',default,default,'사라봉공원.jpg','사라봉공원.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '관덕정','제주의 상징',0,'제주시 관덕로 19','064-710-6711',default,default,'관덕정.jpg','관덕정.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '도두해안도로',' 경관 특히 일몰과 야경이 아름답기로 유명한 공항 인근 해안도로',0,'제주시 도두일동 1734','default',default,default,'도두해안도로.jpg','도두해안도로.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '한라생태숲','트래킹과 함께 자연생태계의 다양한 모습을 즐길 수 있는 516도로 인근숲, 마방목지근처 ',0,'제주시 516로 2596','064-710-8688',default,default,'한라생태숲.jpg','한라생태숲.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '우도','소가 누워있는 형상을 하고 있는 제주의 가장 큰 부속섬 아름다운 해변과 풍광으로 유명',0,'제주시 우도면 연평리 904-1','064-782-5671',default,default,'우도.jpg','우도.jpg', 2,'GOOD',5,360,1);
insert into LANDMARK values(LANDMARK_SEQ.nextval, '한라수목원','도심 속 자연 휴양림',0,'제주시 아라1동 387','064-724-6830',default,default,'한라수목원.jpg','한라수목원.jpg', 2,'GOOD',5,360,1);
commit;
