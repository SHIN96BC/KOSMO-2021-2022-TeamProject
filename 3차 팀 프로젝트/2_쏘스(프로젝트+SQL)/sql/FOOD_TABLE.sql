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