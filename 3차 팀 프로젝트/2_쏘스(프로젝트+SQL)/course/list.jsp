<%@ page contentType="text/html;charset=utf-8" import="java.util.ArrayList, course.jstl.domain.Course"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<jsp:include page="../login/login_check_module.jsp"/>  --%>

<meta charset='utf-8'>

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
<link href="../css/styles.css" rel="stylesheet" />
 <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color:black; opacity: 0.5;">
    <div class="container">
        <a class="navbar-brand" href="course.do?message=index"><img style="width:110; height:50;" src="../img/jeju2.png" alt="..." /></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars ms-1"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0" id="menuList">
            	<li class="nav-item" id="boardP"><a id="board" class="nav-link" href="../member/mController?message=loginform">게시판</a></li>
                <li class="nav-item" id="courseP"><a id="course" class="nav-link" href="../member/mController?message=loginform">코스추천</a></li>
                <li class="nav-item" id="contentsP"><a id="contents" class="nav-link" href="../member/mController?message=loginform">컨텐츠</a></li>
                <li class="nav-item" id="loginInfo"><a id="login" class="nav-link" href="../member/mController?message=loginform">로그인</a></li>
                <li class="nav-item" id="signupLogout"><a id="signup" class="nav-link" href="../member/mController?message=signform">회원가입</a></li>
            </ul>
        </div>
    </div>
    <a style='display:none;' id="boardLogin" class="nav-link" href="../jeju_board/jeju_board.do?message=mainBoard">게시판</a>
    <a style='display:none;' id="courseLogin" class="nav-link" href="course.do?message=list">코스추천</a>
    <a style='display:none;' id="contentsLogin" class="nav-link" href="../contents/contents.do?message=list">컨텐츠</a>
    <a style='display:none;' id="info" class="nav-link" href="../login/login.do?m=info">${sessionScope.Member_Nick}님 어서오세요</a>
    <a style='display:none;' id="logout" class="nav-link" href="../member/mController?message=logout">로그아웃</a>
</nav>
<c:if test="${sessionScope.Member_Nick ne null}">
	<script language=javascript>
        	let loginInfo = document.getElementById('loginInfo');
        	let signupLogout = document.getElementById('signupLogout');
        	let boardP = document.getElementById('boardP');
        	let courseP = document.getElementById('courseP');
        	let contentsP = document.getElementById('contentsP');
        	let login = document.getElementById('login');
        	let signup = document.getElementById('signup');
        	let board = document.getElementById('board');
        	let course = document.getElementById('course');
        	let contents = document.getElementById('contents');
    		loginInfo.removeChild(login);
    		signupLogout.removeChild(signup);
    		boardP.removeChild(board);
    		courseP.removeChild(course);
    		contentsP.removeChild(contents);
    		
    		let info = document.getElementById('info');
        	let logout = document.getElementById('logout');
        	let boardLogin = document.getElementById('boardLogin');
        	let courseLogin = document.getElementById('courseLogin');
        	let contentsLogin = document.getElementById('contentsLogin');
        	loginInfo.appendChild(info);
        	signupLogout.appendChild(logout);
        	boardP.appendChild(boardLogin);
        	courseP.appendChild(courseLogin);
        	contentsP.appendChild(contentsLogin);
        	
        	info.style.display = 'block';
        	logout.style.display = 'block';
        	boardLogin.style.display = 'block';
        	courseLogin.style.display = 'block';
        	contentsLogin.style.display = 'block';
    </script>
</c:if>

<center>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<style>
		table, th, td {
		   border: 1px solid black;
		   border-collapse: collapse;
		}
		th, td {
		   padding: 5px;
		}
		a { text-decoration:none }
	</style>
	<div style="margin-top:150;"></div>
		<hr width='1000' size='2' noshade>
		<h2>원하시는 테마를 선택하세요</h2>
			&nbsp;&nbsp;&nbsp;
		<a href='jeju_board.do?message=input&type='>글쓰기</a>
			&nbsp;&nbsp;&nbsp;
		<a href='jeju_board.do?message=index'>인덱스</a>
		<hr width='1000' size='2' noshade>
</center>

<center>
</br></br></br></br>


<form>
	<table border="1" width="800" height="200">
		<tr>			
				<img width="473" alt="제주도 사진" usemap="#jejumap" src="../img/${imageName}">
				<map name="jejumap">
				    <area shape="rect" coords="190,124,290,180" href='course.do?message=list&division=1' alt="제주의 숲">
				    <area shape="rect" coords="140,44,285,97" href='course.do?message=list&division=2' alt="제주의 화려한 밤">
				    <area shape="rect" coords="23,168,137,232" href='course.do?message=list&division=3' alt="제주에서의 힐링">
				    <area shape="rect" coords="168,204,300,262" href='course.do?message=list&division=4' alt="열대지방 제주">
				    <area shape="rect" coords="314,41,435,110" href='course.do?message=list&division=5' alt="모험가득한 제주">
				</map>
		</tr>
	</table>
</form>
</center>

<div style="margin-top:-150">
	<table border='1' width='600' align='center' cellpadding='3'>
	<tr>
			<td width='85%' align='center'><b>코스이름</b></td>
			<td width='15%' align='center'><b>좋아요</b></td>
	</tr>
	<c:if test="${empty list}">
		<tr>
			<td colspan="5" style="text-align:center">추천코스가 없습니다</td>
		</tr>
	</c:if>
	<c:forEach items="${list}" var="course">
		<tr>
			<td align='center'><a href='course.do?message=list_con&seq=${course.cnum}'>${course.cname}</a>
			</td>
			<td align='center'>${course.love}</td>
		</tr>
	</c:forEach>
	</table>
</div>