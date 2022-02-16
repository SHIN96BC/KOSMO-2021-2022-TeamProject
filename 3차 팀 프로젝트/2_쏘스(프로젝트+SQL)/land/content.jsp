<%@ page contentType="text/html;charset=utf-8" import="java.util.ArrayList, land.mvc.domain.Landmark"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
		<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
		<link href="../css/styles.css" rel="stylesheet" />
		
		 <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color:black; opacity: 0.5;">
		    <div class="container">
		        <a class="navbar-brand" href="land.do?m=index"><img style="width:110; height:50;" src="../img/jeju2.png" alt="..." /></a>
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
    <a style='display:none;' id="courseLogin" class="nav-link" href="../course/course.do?message=list">코스추천</a>
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

	
		<meta charset='utf-8'>
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
		<center>
		<div style="margin-top:150"></div>
		<img src ="../photo/${landmark.lphoto }">
		<hr width='600' size='2' noshade>
		<h2>볼거리 내용</h2>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<a href='land.do?m=input2'>임시 </a>
		<hr width='600' size='2' noshade>
		<table border='1' width='600' align='center' cellpadding='3'>

<c:if test="${empty landmark }">
	 <tr>
				<td colspan="2" style="text-align:center">데이터가 하나도 없네요</td>
	 </tr>
</c:if>
		<tr>
			<td width='100' align='center'>볼거리번호</td>
			<td>${landmark.lnum}</td>
			</tr>
		<tr>
			<td align='center'>장소 이름</td>
			<td>${landmark.lname}</td>
		</tr>
		<tr>
			<td align='center'>장소 소개</td>
			<td>${landmark.lintro}</td>
		</tr>
		<tr>
			<td align='center'>전화번호</td>
			<td>${landmark.lphone}</td>
		</tr>
		<tr>
			<td align='center'>장소사진</td>
			<td>${landmark.lphoto}</td>
		</tr>
		<tr>
			<td align='center'>장소진짜사진</td>
			<td>${landmark.loriphoto}</td>
		</tr>
		<tr>
			<td align='center'>리뷰</td>
			<td>${landmark.review}</td>
		</tr>
		<tr>
			<td align='center'>평점</td>
			<td>${landmark.star}</td>
		</tr>
		<tr>
			<td align='center'>조회수</td>
			<td>${landmark.views}</td>
		</tr>
		<tr>
			<td align='center'>코스등분</td>
			<td>${landmark.division}</td>
		</tr>
											
		</table>
		<hr width='600' size='2' noshade>
		<hr width='600' size='2' noshade>
		<b>
		<a href='land.do?m=delete&lnum=${landmark.lnum}'>삭제</a> 
		<a href='land.do'>목록</a>
		</b>
		<hr width='600' size='2' noshade>
		</center>



