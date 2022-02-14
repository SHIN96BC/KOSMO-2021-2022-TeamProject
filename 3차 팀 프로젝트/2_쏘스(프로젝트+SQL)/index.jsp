<%@ page contentType="text/html; charset=UTF-8"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!doctype html>
<html lang="ko">
<head>
<title>제주 지니</title>

<meta name="Keywords" content="제주지니, 제주여행, 제주관광, 제주도, 제주시, 서귀포시, 안심여행, 제주살이, 축제, 제주바다, 해안도로, 당일치기, 제주도일상, 현지인맛집, 추천맛집, 여행코스, 산책, 제주문화, 마을여행, 할인쿠폰, 짐옮김, 핸즈프리, 짐 옮김이, 자유여행, 맞춤여행, 겨울여행, 제주, 핫플레이스, 여행정보, 제주도2박3일코스, 제주도관광코스, 제주도가볼만한곳, 제주가볼만한곳, 겨울제주도여행, 제주도흑돼지맛집, 1박2일제주도, 제주공항근처가볼만한곳, jejujini, Jeju Island, jeju travel, jeju trip, where to travel in korea, jeju korea, korea travel, korea trip, 济州旅游, 济州, 济州岛, 首尔 济州, 济州景点, 济州 冬天, travel app, 여행 앱">

<meta charset="utf-8">
<meta http-equiv="Content-Language" content="ko">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no, address=no, email=no" />
<!-- <meta property="og:site_name" content="JEJUJINI"/>
<meta property="og:type" content="website">
<meta property="og:url" content=""/>
<meta property="og:title" content="제주지니 그룹사 임직원 이벤트">
<meta property="og:description" content="제주지니의 여행친구가 되어주세요">
<meta property="og:image" content="https://s3.ap-northeast-2.amazonaws.com/shinhanjeju/uploadImg/EVT_PHT/SQUARE/kakao_open_event2.png"> -->


<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
<link href="css/styles.css" rel="stylesheet" />
 <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color:black; opacity: 0.5;">
    <div class="container">
        <a class="navbar-brand" href="#page-top"><img style="width:110; height:50;" src="img/jeju2.png" alt="..." /></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0" id="menuList">
                <li class="nav-item"><a class="nav-link" href="jeju_board/jeju_board.do?message=mainBoard">게시판</a></li>
                <li class="nav-item"><a class="nav-link" href="#portfolio">코스추천</a></li>
                <li class="nav-item" id="boardP"><a id="board" class="nav-link" href="login/login.do?m=loginmenu">마이페이지</a></li>
                <li class="nav-item" id="loginInfo"><a id="login" class="nav-link" href="login/login.do?m=loginmenu">Login</a></li>
                <li class="nav-item" id="signupLogout"><a id="signup" class="nav-link" href="login/login.do?m=signin">Sign Up</a></li>
            </ul>
        </div>
    </div>
    <a style='display:none;' id="info" class="nav-link" href="login/login.do?m=info">님 어서오세요</a>
    <a style='display:none;' id="logout" class="nav-link" href="login/login.do?m=logout">logout</a>
</nav>


<!-- 
<meta property="og:title" content="[JEJUJINI] 진짜 제주를 맛보다" />
<meta property="og:description" content="제주지니가 알려주는 생생한 정보를 공유해 보세요." />
 -->
<link rel="icon" type="image/png" sizes="32x32" href="https://cdn.jejujini.kr/resources/KR/img/favicon/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="96x96" href="https://cdn.jejujini.kr/resources/KR/img/favicon/favicon-96x96.png" />
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/reset.css?r=13" />
<!-- <link rel="stylesheet" type="text/css" href="https://s3.ap-northeast-2.amazonaws.com/shinhanjeju/resources/KR/css/reset.css" /> -->
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/common.css?r=13" />
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/new_common.css?r=13" />
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/slick.css" />	
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/jquery-ui-1.10.4.custom.css">
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/swiper.min.css" /> 
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/event.css?r=13" />
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/footer.css?r=13" />
<!-- <script type="text/javascript" src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery.preloaders.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/css_common.js?r=13"></script><!-- js이지만 css버젼 영향도 -->
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/slick.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery.rwdImageMaps.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/clipboard.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/plugin/shinhansys_lib.js"></script>
<script type="text/javascript" src="/resources/KR/js/EVT/MESSAGE_KR.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/commons/common.js?r=13"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/plugin/hybrid_plugin_if.js?r=13"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/util/browser.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/util/sUtil.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/util/dUtil.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/util/openApiUtil.js?r=13"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/ctm/aes.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/ctm/AesUtil.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/ctm/pbkdf2.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/swiper.min.js"></script><!-- 180509 슬라이드 js 추가-->
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/commons/USRGIN1000.js?r=13"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/commons/USRGIN0011.js?r=13"></script>
<script type="text/javascript" src="/resources/KR/js/EVT/RSV/EVTRSV0030.js?r=13"></script>
<script type="text/javascript" src="/resources/KR/js/EVT/MESSAGE_KR.js?r=13"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/commons/global.js?r=13"></script>


<!-- 소셜로그인 팝업 -->
<div class="layer_base loginOpenCont">
    <div class="login_wrap">
        <button type="button" class="layerClose">닫기</button>
        <p class="loginTit">혼저옵서예!</p>
        <p class="loginTxt">간편한 SNS 로그인으로<br>제주지니와 함께 여행을 떠나요!</p>
        <ul class="login_btn_group all_list loginSnsBtn">
            <li class="login1"><button type="button" class="btn_base kakao" value="K"><span>카카오톡으로 로그인</span></button></li><!-- 카카오톡 로그인 -->
			<li class="login2"><button type="button" class="btn_base naver" value="N"><span>네이버로 로그인</span></button></li><!-- 네이버 로그인 -->
			<li class="login3"><button type="button" class="btn_base facebook" value="F"><span>페이스북으로 로그인</span></button></li><!-- 페이스북 로그인 -->
			<li class="login5"><button type="button" class="btn_base phone" value="P"><span>휴대폰으로 로그인</span></button></li><!-- 휴대폰인증 로그인 -->
			<li class="login4"><button type="button" class="btn_base email" value="E"><span>이메일로 로그인</span></button></li><!-- 이메일 로그인 -->
			<li class="login6"><button type="button" class="btn_base wechat" value="W"><span>위챗 로그인</span></button></li><!-- 위챗 로그인 -->
            <li class="login7" style="display:none;"><button type="button" class="btn_base apple login7" value="A"><span>애플 로그인</span></button></li><!-- 애플 로그인 -->
        </ul>
    </div><!-- //login_wrap -->
</div><!-- //layerLogin -->
<!--  계정찾기 레이어 팝업 충돌!! -->
<div id="layerOpen" class="layer_full layerOpenCont">
	<div class="layer_cont">		
		<div class="layer_header">
			<div class="rightArea">
				<a href="#none" class="close layerClose">닫기</a><!-- 닫기 -->
			</div>
		</div>
		<div class="cont_base">
			<div class="title_grp">
				<h1 class="title">휴면회원 안내</h1><!-- 휴면회원 안내 -->
				<p class="guide">오랜만이예요! 다시 찾아주셨네요!</p><!-- 오랜만이예요! 다시 찾아주셨네요! -->
			</div><!--//title_grp -->

			<div class="guide_cont">
				<p>회원님의 개인정보보호를 위해 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 29조에 따라 서비스를 1년간 로그인하지 않은 계정을 휴면상태로 전환하고 있습니다.</p><!-- 회원님의 개인정보보호를 위해 ‘정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 29조에 따라 서비스를 1년간 로그인하지 않은 계정을 휴면상태로 전환하고 있습니다. -->
				<p>해당 서비스를 지속적으로 이용하기 위해서는 휴면해제 동의가 필요합니다. 아래의 버튼을 클릭하셔서 휴면회원 해제를 진행해주세요.</p><!-- 해당 서비스를 지속적으로 이용하기 위해서는 휴면해제 동의가 필요합니다. 아래의 버튼을 클릭하셔서 휴면회원 해제를 진행해주세요. -->
				<p>
					<strong class="point">
						휴면 전환 일자<!-- 휴면 전환 일자 --> 
						<em id="IAC_DT">2020.07.22</em>
					</strong>
				</p>
			</div>

			<div class="guide_bot">
				<ul class="list_dot asterisk">
					<li>휴면 해제 미동의 클릭시 제주지니 서비스를 이용 할 수 없습니다.</li><!-- 휴면 해제 미동의 클릭시 제주지니 서비스를 이용 할 수 없습니다. -->
				</ul>
			</div>

			<div class="btn_group">
				<button type="button" class="btn_base point onAgree">미동의</button><!-- 미동의 -->
				<button type="button" class="btn_base onAgree">동의</button><!-- 동의 -->
			</div><!-- //btn_group -->
		</div><!-- //cont_base -->
	</div>
</div>
	
<div id="IacAgreeN" class="layer_base layerOpenCont">
	<div class="layer_cont">
		<h2 class="title">휴면 계정 미동의</h2><!-- 휴면 계정 미동의 -->
		<div class="layer_inner">
			회원님은 제주지니 서비스를<br>이용하실 수 없으며 계정은 분리보관 처리됩니다.<br><br><!-- 회원님은 제주지니 서비스를<br>이용하실 수 없으며 계정은 분리보관 처리됩니다. -->
			회원 탈퇴를 원하시면<br>탈퇴를 진행해 주세요.<!-- 회원 탈퇴를 원하시면<br>탈퇴를 진행해 주세요. -->
		</div>
		<div class="btn_group">
			<button type="button" class="btn_base" id="onLogout">닫기</button><!-- 닫기 -->
			<button type="button" class="btn_base point" id="onRemove">회원 탈퇴</button><!-- 회원 탈퇴 -->
		</div>
	</div>
</div>

<div id="IacAgreeY" class="layer_base layerOpenCont">
	<div class="layer_cont">
		<h2 class="title">휴면 계정 해제 완료</h2><!-- 휴면 계정 해제 완료 -->
		<div class="layer_inner">
			회원님 계정의 휴면 상태가<br>해제 되었습니다.<br>서비스 정상 이용 가능합니다.<!-- 회원님 계정의 휴면 상태가<br>해제 되었습니다.<br>서비스 정상 이용 가능합니다. -->
		</div>
		<div class="btn_group">
			<button type="button" class="btn_base point" id="onChange">확인</button><!-- 확인 -->
		</div>
	</div>
</div>
<!--// 소셜로그인 팝업 -->
<script type="text/javascript">
// 카카오 api key 한번만 등록한다.
//Kakao.init('6484a2ac4f0366bae4ba538fe01ffa12');
var globalResources = "/resources/KR";
var s3Resources = "https://cdn.jejujini.kr/resources/KR";
var pageTitle = "추석맞이 이벤트(09.12~10.11)";
var pagePath = "/EVT/RSV/EVTRSV0030.do";

$(window).bind("pageshow", function(event) {
	//PC 브라우져에서 접근시 onJSReady가 실행되지 않기 때문에 실행시킨다
	if (!fnIsMobile()) {
		var prevPageParameter = '';
		if(prevPageParameter == "") {
			prevPageParameter = "{}";
		}
		var hybridPageParam = {
				"parameter" : eval('(' + prevPageParameter + ')')
		};
		onJSReady(hybridPageParam);
	} else {
		// 모든 화면 이동시 공통 progress hide 실행
		Progress.hide(true);
	}
});
</script>

<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta http-equiv="Pragma" content="no-cache"/>
<meta property="og:type" content="website">
<meta property="og:url" content="https://www.jejujini.kr"/>
<meta property="og:title" content="제주은행/ 제주지니(JEJUJINI)">
<meta property="og:description" content="색다른 제주 여행을 경험하고 싶다면 제주지니를 지금 바로 확인해보세요!">
<!-- @Judy 2022.1 룰렛이벤트-->
<meta property="og:image" content="https://cdn.jejujini.kr/uploadImg/EVT_PHT/SQUARE/ev20220105_list_banner.png">
<link rel="image_src" href="https://cdn.jejujini.kr/uploadImg/EVT_PHT/SQUARE/ev20220105_list_banner.png" />

<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/reset.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/common.css" />

<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/jquery.fullpage.min.css" /> <!-- 180621 추가 -->
<link rel="stylesheet" type="text/css" href="https://cdn.jejujini.kr/resources/KR/css/event.css" />
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/css_common.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/slick.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery.rwdImageMaps.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/swiper.min.js"></script>
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/scrolloverflow.min.js"></script> <!-- 180621 추가 -->
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery.fullpage.min.js"></script> <!-- 180621 추가 -->
<script type="text/javascript" src="https://cdn.jejujini.kr/resources/KR/js/libs/jquery.preloaders.min.js"></script>

<script>

var globalResources = "/resources/KR";
var s3Resources = "https://cdn.jejujini.kr/resources/KR";
$(document).ready(function() {
    $('#landing').fullpage({
        //anchors: ['firstPage', 'secondPage', '3rdPage'],
        sectionsColor: ['#1ec8de', '#f87541', '#00c19c', '#7078dc', '#7dcd53', '#ff8080', '#1e98de'],
        navigation: true,
        navigationPosition: 'right',
        scrollingSpeed:1000
    });

    openView2(evtPop);	//EVT 팝업

});

$(function() {
	var observer = new MutationObserver(function(mutations) {
		console.log('Attributes changed!');
        if($("#section7").hasClass("active"))
			$("#clausebar").show(function(){
                $("#clausebar").animate({'bottom': '85px'}, 500);
            });
		else
            $("#clausebar").animate({'opacity': 'hide', 'bottom': '0'}, 500);
	});
	var target = document.querySelector('#section7');
	observer.observe(target, {
		attributes: true
	});
});

</script>
            
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<style type="text/css">

.swiper-container {
	width:620px;
	height:420px;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
	border:5px solid silver;
	background-color:#fff;
	border-radius:5px;
	box-shadow:0 0 10px silver inset;
	box-sizing:border-box; /* 이 설정을 하지 않으면 슬라이드시 큐브가 틀어짐 */
	/* 아래에 있는 실행가능한 소스를 가지고 실험해 보세요 */
}

</style>


<style>

</style>
</head>
<body>
    <div id="landing">
        <div class="section" id="section0">
        <video data-autoplay loop muted style="width:2700; height:1200; display: block; z-index:0; margin-left:-400;">
        	<source src="https://giant.gfycat.com/IllinformedShorttermAgama.mp4">
        </video>
    		<!--  <div style="margin-top:-700; z-index:1;  position:absolute;">
    			<h2>나만의 특별한<br /> 제주여행친구</h2>
				<p class="s_txt1">뻔한 여행과 맛집정보는 NO!<br />제주지니를 불러보세요.</p>
				<p class="s_txt2">현지인들이 추천하는 <br />진짜 제주 맛집과 코스를 알려줘요.</p>
    		</div>-->
		
    	</div><!--//section-->

    	<div class="section" id="section1">
            <div class="title">
                <h4>맛집</h4>
                <p class="subTxt">현지인들만 아는 진짜 맛집.<br/>현지인들의 신뢰할 수 있는 평가로 선별된 맛집을 추천합니다.</p>
                <p class="subTxt">스마트검색으로 나만을 위한 맛집을 찾아서 저장해두고 제주여행 때 편하게 찾아가세요.</p>
            </div>

		<div class="swiper-container myswiper" style="margin-top:-600;">
		   <div class="swiper-wrapper">
		      <div class="swiper-slide"><img src="photo/명리동식당.png" style="max-width: 100%; height: 100%;">
		         <div style="margin-left:-200; z-index:1; position:absolute;">
		             <a href='food.do?m=content&fnum=${food.fnum}'>${food.fname}<input type="submit" value="상세내용"></a>
		               <div class="">${food.fintro}</div>
		               <div class="">평점 : ${food.star}</div>
		         </div>
		      </div>
		      <c:forEach items="${list}" var="food">
		    </c:forEach>
		   </div>
		   <!-- 페이징 -->
		   <div class="swiper-pagination"></div>
		</div>
		  </div>


    	<div class="section" id="section3">
            <div class="title">
                <h4>코스</h4>
                <p class="subTxt">누구나 가는 뻔한 코스는 그만!<br/>여행의 컨셉에 맞는 테마지역을 탐색하면 생각지도 못한 제주도를 만날 수 있어요.</p>
                <p class="subTxt">나만의 코스로 잊지 못할 제주에서의 추억을 만들어 보세요.</p>
            </div>
            <div class="mainImg">
                <img src="https://cdn.jejujini.kr/resources/KR/img/event/pc_main_img2.png" alt="" class="pc">
                <img src="https://cdn.jejujini.kr/resources/KR/img/event/m_main_img2.png" alt="" class="mobile">
            </div>
    	</div>

       

		<div class="section" id="section5">
            <div class="title">
                <h4>할인쿠폰</h4>
                <p class="subTxt">제주 전 지역에서 할인되는 다양한 쿠폰이 가득!<br>인기 관광지 할인쿠폰부터,<br>신청 즉시 최대 65%할인되는 3초할인쿠폰까지!</p>
                <p class="subTxt">제주지니만의 특별한 할인가격으로 ‘진짜’ 제주를 관광하세요!</p>
            </div>
            <div class="mainImg">
                <img src="https://cdn.jejujini.kr/resources/KR/img/event/pc_main_img7.png" alt="" class="pc">
                <img src="https://cdn.jejujini.kr/resources/KR/img/event/m_main_img7.png" alt="" class="mobile">
            </div>
        </div>

        <!-- 190419 추가 -->
        <div class="section" id="section6">
            <div class="title">
                <h4>제주 특산물</h4>
                <p class="subTxt">제주 특산물도 제주지니에서!<br/>제주도 경제통상진흥원이 제주산 원료와 엄격한<br/>입점절차를 통해 운영하는 믿을 수 있는 특산물 쇼핑몰!</p>
                <p class="subTxt">제주지니 회원전용 할인혜택으로<br/>이제 집에서도 제주를 맛보세요!</p>
            </div>
            <div class="mainImg">
                <img src="https://cdn.jejujini.kr/resources/KR/img/event/pc_main_img8.png" alt="" class="pc">
                <img src="https://cdn.jejujini.kr/resources/KR/img/event/m_main_img8.png" alt="" class="mobile">
            </div>
        </div>
        <!--// 190419 추가 -->

        <div class="section" id="section7">
            <div class="title">
                <h4>그리고!</h4>
                <!-- 181012 수정 -->
                <p class="subTxt">제주지니는 여러분의 특별한 여행친구가 되기 위해 더욱 즐겁고 편리한 서비스를 계속 준비하고 있습니다.</p>
                <p class="subTxt">무거운 여행가방으로부터 자유롭고 원하는 시간에 원하는 곳으로 편리하게 이동하고<br />맛집에서 더 이상 줄을 서서 기다리지 않는 여행!</p>
                <p class="subTxt">소소하지만 특별하고 확실한 즐거움을 주는 여러분의 제주지니가 되겠습니다.</p>
                <!--// 181012 수정 -->
            </div>
            <div class="mainImg">
                <img src="https://cdn.jejujini.kr/resources/KR/img/event/pc_main_img4.png" alt="" class="pc">
                <img src="https://cdn.jejujini.kr/resources/KR/img/event/m_main_img4.png" alt="" class="mobile">
            </div>
            <!-- <div class="clause">
	            <div class="pc">
	                <ul>
		                <li><a href="/MYG/EHM/MYGEHM0026.do">개인정보 처리방침</a></li>
		                <li><a href="/MYG/EHM/MYGEHM0022.do">위치기반서비스 이용약관</a></li>
	                </ul>
	            </div>
	            <div class="mobile">
	                <ul>
		                <li><a href="/MYG/EHM/MYGEHM0026.do">개인정보 처리방침</a></li>
		                <li><a href="/MYG/EHM/MYGEHM0022.do">위치기반서비스 이용약관</a></li>
	                </ul>
	            </div>
             </div> -->
    	</div>
    </div>

    <!-- 개인정보처리방침 / 위치기반서비스 이용약관 -->
    <!-- 마지막 레이어 "그리고!" 가 보이는 경우에만 노출하도록 해주세요. -->
    <!-- 2020.06.19 junyoung 병수 랜딩페이지 수정 -->
    <div id="clausebar" class="clause" style="display: none;" >
        <div class="pc">
            <ul>
                <li><a href="/MYG/EHM/MYGEHM0026.do"><strong>개인정보 처리방침</strong></a></li>
                <li><a href="/MYG/EHM/MYGEHM0022.do">위치기반서비스 이용약관</a></li>
            </ul>
        </div>
        <div class="mobile">
            <ul>
                <li><a href="/MYG/EHM/MYGEHM0026.do"><strong>개인정보 처리방침</strong></a></li>
                <li><a href="/MYG/EHM/MYGEHM0022.do">위치기반서비스 이용약관</a></li>
            </ul>
        </div>
    </div>

    <!-- 180703 추가 -->
    <div class="utilArea mobile">
        <div class="down">
        	<ul class="social">
                <li><a href="https://www.facebook.com/JEJUJINII/"><img src="https://cdn.jejujini.kr/resources/KR/img/ico_lp_01.png" alt="페이스북"></a></li>
                <li><a href="https://instagram.com/jejujini_official?utm_medium=copy_link"><img src="https://cdn.jejujini.kr/resources/KR/img/ico_lp_02.png" alt="인스타그램"></a></li>
                <li><a href="https://blog.naver.com/jejujini"><img src="https://cdn.jejujini.kr/resources/KR/img/ico_lp_03.png" alt="블로그"></a></li>
                <li><a href="https://www.youtube.com/channel/UCP963NQJLHP5PlkcPDx2K-g"><img src="https://cdn.jejujini.kr/resources/KR/img/ico_lp_04.png" alt="유튜브"></a></li>
            </ul>
        	<a href="javascript:;" class="appSetupBtn" onclick="fnMove();">
        		<img src="https://cdn.jejujini.kr/resources/KR/img/appSetupBtn.png">
			</a>
<!--             <ul> -->
<!--                 <li class="google"><a href="#" onclick="fnMove();">Google Play</a></li> -->
<!-- 			</ul> -->
        </div>
    </div>
    <!-- //180703 추가 -->
	<div id="evtPop" class="event_FullBox" style="display: none;">
		<div class="topArea">
			<a href="javascript:;" class="close"><img src="https://cdn.jejujini.kr/resources/KR/img/event/ico_close.png" alt="닫기버튼" onclick="closePopout(evtPop)"></a>
		</div>
		<div class="event_con event_fullImage_Link" onclick="fnMove(); return false;">
	        <!-- @Judy -->
	        <img src="img/pop.jpg" alt="">
	    </div>
	</div>




  <script>

// 예제를 실행하기 위해서 myswiper 를 임의로 사용했습니다.
new Swiper( '.myswiper', {

	// 큐브 효과 사용
	effect : 'cube',

	// 슬라이드 반복
	loop : true,

	// 페이징 설정
	pagination : {

		// 페이징 요소의 클래스명
		el : '.swiper-pagination',

		// 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		clickable : true,

	},

});

</script>

</body>
</html>




