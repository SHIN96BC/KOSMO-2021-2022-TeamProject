drop table ACTIVITY;
drop sequence ACTIVITY_SEQ;
purge recyclebin;


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
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'크라이 오유','여행의 피로를 풀고 싶다면',70000,'제주시 노형동 3785-1','070-7543-8378',default,default,'크라이오유.jpeg','크라이오유.jpeg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주카약 올레','한담해변 에메랄드 빛 바다를 내려다보며 즐길 수 있는 최고의 액티비티',0,'제주시 애월읍 애월리 2490-1','010-4683-6492',default,default,'제주카약올레.png','제주카약올레.png',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'빅볼랜드', '한라산 중산간에서 즐기는 수중액티비티!',0,'제주시 산록서로 15','1588-6418',default,default,'빅볼랜드.jpg','빅볼랜드.jpg', 1,'나름 괜찮았어요',5,300,1);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'산방선유람선','산방산과 송악산 인근 해안의 절경을 감상할 수 있는 유람선 제주여행의 필수코스',70000,'서귀포시 안덕면 화순해안로106번길 16','064-792-1188',default,default,'산방선유람선.jpg','산방선유람선.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주야생돌고래탐사','제주바다를 가장 잘 아는 선장님과 함께 야생돌고래를 찾아 모험을 떠나요.',0,'서귀포시 동일하모로 98번길14-32','050-5558-3838',default,default,'제주야생돌고래탐사.jpg','제주야생돌고래탐사.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'점보빌리지', '제주에서 즐기는 코끼리쇼와 이국의 정취',0,'서귀포시 안덕면 평화로319번길 31-11','064-792-1233',default,default,'점보빌리지.jpg','점보빌리지.jpg', 1,'나름 괜찮았어요',5,300,1);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'새별헤이요목장','동물친구들과의 휴식과 힐링의 시간',70000,'제주시 봉성리 4554-20','064-794-2828',default,default,'새별헤이요목장.jpg','새별헤이요목장.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'한라산소주투어','한라산과 함께하는 우아한 소주여행',0,'제주시 한림로555','064-729-1958',default,default,'한라산소주투어.jpg','한라산소주투어.jpg',10,'피로 풀려요',5,5,2);

insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주바다하늘다이브센터','스킨스쿠버의 매력속으로~ 바다속으로 풍덩!',0,'제주시 도두3길 20','064-702-2664',default,default,'제주바다하늘다이브센터.jpg','제주바다하늘다이브센터.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'수목원테마파크','짜릿한 즐거움을 무한대로 즐겨라! 수목원테마파크',0,'제주시 제주시 은수길 69','064-742-3700',default,default,'수목원테마파크.jpg','수목원테마파크.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'아침미소목장','아이들과 함께하는 목장체험',0,'제주시 월평동 155','064-727-2545',default,default,'아침미소목장.jpg','아침미소목장.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'돈키쥬쥬','다양한 동물과 교감하는',0,'제주시 아라2동 113-1','064-755-5920',default,default,'돈키쥬쥬.jpg','돈키쥬쥬.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'이호캔들','푸른 밤 은하수처럼 빛나는 바다를 담은',0,'제주시 제주시 서해안로 66, 2층','010-2907-2754',default,default,'이호캔들.jpg','이호캔들.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'삼다수목장','제주의 푸른 자연 속을 달리는 승마',0,'제주시 비자림로 485-15','064-784-1441',default,default,'삼다수목장.jpg','삼다수목장.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'성읍민속마을','주민들이 실제 거주하고 있는 민속촌',0,'서귀포시 성읍정의현로19','064-710-6797',default,default,'성읍민속마을.jpg','성읍민속마을.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'쇠소깍제트보트','롤러코스터보다 재미있는 제트보트',0,'서귀포시 하효동 999-3','064-733-0251',default,default,'쇠소깍제트보트.jpg','쇠소깍제트보트.jpg',10,'피로 풀려요',5,5,2);


insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'중문그랑블루요트','국내 최대 초특급 럭서리 요트',0,'서귀포시 서귀포시 대포로 172-7','064-739-7776',default,default,'중문그랑블루요트.jpg','중문그랑블루요트.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'우도잠수함','아름다운 해저여행의 추억',0,'서귀포시 성산읍 성산리 347-9','064-784-2333',default,default,'우도잠수함.jpg','우도잠수함.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'최남단감귤체험농장','테마가 있는 최남단체험',0,'서귀포시 남위남성로 168','064-764-7759',default,default,'최남단감귤체험농장.jpg','최남단감귤체험농장.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주레일바이크','유명 오름과 성산일출봉 등을 볼 수 있는 액티비티 자동으로',0,'제주시 용눈이오름로 641','064-783-0033',default,default,'제주레일바이크.jpg','제주레일바이크.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'뷰제주하늘','제주도 오름을 달리는 이색체험',0,'서귀포시 성산읍 서성일로 397','064-784-3631',default,default,'뷰제주하늘.jpg','뷰제주하늘.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'로봇스퀘어','직접 만지며 조종할 수 있는 로봇전시관',0,'제주시 해맞이해안로 1032','064-783-0825',default,default,'로봇스퀘어.jpg','로봇스퀘어.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'국제리더스클럽','사계절 해양레포츠 테마파크',0,'제주시 신흥리 1-11','064-783-0000',default,default,'성읍민속마을.jpg','성읍민속마을.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'김녕요트','요트에서 즐기는 제주의 풍광',0,'제주시 구좌해안로 229-16','064-725-0225',default,default,'쇠소깍제트보트.jpg','쇠소깍제트보트.jpg',10,'피로 풀려요',5,5,2);

insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'제주오프로드','야생의 모습을 간직한 곶자왈과 환상적인 선새미못의 풍광을 배경으로 짜릿한 오프로드를 즐겨요',0,'제주시 선흘리 624-4 제라진캠프','0507-1429-7912',default,default,'제주오프로드.jpg','제주오프로드.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'청초밭','자연속 삼나무 숲길',0,'서귀포시 성읍이리로57번길 34','064-787-7811',default,default,'청초밭.jpg','청초밭.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'서귀포유람선','범섬, 외돌개, 정방폭포 등 서귀포 해안의 절경을 감상할 수 있는 유람선',0,'서귀포시 남성중로 40','064-732-1717',default,default,'서귀포유람선.jpg','서귀포유람선.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'목장카페드르쿰다','거침없이 제주의 초원을 달린다',0,'서귀포시 번영로 2454','064-787-5220',default,default,'목장카페드르쿰다.jpg','목장카페드르쿰다.jpg',10,'피로 풀려요',5,5,2);
insert into ACTIVITY values(ACTIVITY_SEQ.nextval,'성읍민속마을','주민들이 실제 거주하고 있는 민속촌',0,'서귀포시 성읍정의현로19','064-710-6797',default,default,'성읍민속마을.jpg','성읍민속마을.jpg',10,'피로 풀려요',5,5,2);

commit;
