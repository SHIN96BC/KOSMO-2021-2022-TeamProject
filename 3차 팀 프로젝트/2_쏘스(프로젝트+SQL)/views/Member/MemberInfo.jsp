<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="Member.domain.Member"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>JEJU FRIENDS</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/modals/">
	<link href="css/bootstrap.min.css" rel="stylesheet">
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
				function sample6_execDaumPostcode() {
				        new daum.Postcode({
				            oncomplete: function(data) {
				            var addr = ''; // 주소 변수
				            var extraAddr = ''; // 참고항목 변수
				            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				              addr = data.roadAddress;
				            } else { // 사용자가 지번 주소를 선택했을 경우(J)
				              addr = data.jibunAddress;
				            }
				           // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				        if(data.userSelectedType === 'R'){
				           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				        if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				         extraAddr += data.bname;
				        }
				        // 건물명이 있고, 공동주택일 경우 추가한다.
				        if(data.buildingName !== '' && data.apartment === 'Y'){
				         extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				        }
				        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				        if(extraAddr !== ''){
				         extraAddr = ' (' + extraAddr + ')';
				        }
				        // 조합된 참고항목을 해당 필드에 넣는다.
				         document.getElementById("sample6_extraAddress").value = extraAddr;
				        } else {
				         document.getElementById("sample6_extraAddress").value = '';
				        }
				         // 우편번호와 주소 정보를 해당 필드에 넣는다.
				         document.getElementById('sample6_postcode').value = data.zonecode;
		                 document.getElementById("sample6_address").value = addr;
				         // 커서를 상세주소 필드로 이동한다.
				         document.getElementById("sample6_detailAddress").focus();
			            }
			        }).open();
			}
	   </script>
	   
	<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cheatsheet/">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/modals/">
	<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
        * {
		  margin: 15px;
		  padding: 1px;
		  box-sizing: border-box;
		  }
		  
		  body {
		  	font-family: 'NamuBarunGothic' , sans-serif;
		  	
		  }
		  
    </style>

    <!-- Custom styles for this template -->
    <link href="modals.css" rel="stylesheet"> 
</head>
<body>
<center>
      <h2>JEJU FRIENDS 회원정보</h2>
         <hr width='600' size='2' noshade>
<span><a href='../member/mController?message=memberManagement' class="basicLogin_item">회원목록</a> </span>
<span><a href='../member/mController?message=logout' class="basicLogin_item">로그아웃</a> </span>
    <hr width='600' size='2' noshade>
  </center>
  <fieldset>
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="bootstrap" viewBox="0 0 118 94">
    <title>JEJU FRIENDS</title>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
</symbol>
  <symbol id="exclamation-triangle-fill" viewBox="0 0 16 16">
    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
  </symbol>

  <symbol id="check2" viewBox="0 0 16 16">
    <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
  </symbol>

  <symbol id="check2-circle" viewBox="0 0 16 16">
    <path d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0z"/>
    <path d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l7-7z"/>
  </symbol>

  <symbol id="bookmark-star" viewBox="0 0 16 16">
    <path d="M7.84 4.1a.178.178 0 0 1 .32 0l.634 1.285a.178.178 0 0 0 .134.098l1.42.206c.145.021.204.2.098.303L9.42 6.993a.178.178 0 0 0-.051.158l.242 1.414a.178.178 0 0 1-.258.187l-1.27-.668a.178.178 0 0 0-.165 0l-1.27.668a.178.178 0 0 1-.257-.187l.242-1.414a.178.178 0 0 0-.05-.158l-1.03-1.001a.178.178 0 0 1 .098-.303l1.42-.206a.178.178 0 0 0 .134-.098L7.84 4.1z"/>
    <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z"/>
  </symbol>

  <symbol id="grid-fill" viewBox="0 0 16 16">
    <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z"/>
  </symbol>

  <symbol id="stars" viewBox="0 0 16 16">
    <path d="M7.657 6.247c.11-.33.576-.33.686 0l.645 1.937a2.89 2.89 0 0 0 1.829 1.828l1.936.645c.33.11.33.576 0 .686l-1.937.645a2.89 2.89 0 0 0-1.828 1.829l-.645 1.936a.361.361 0 0 1-.686 0l-.645-1.937a2.89 2.89 0 0 0-1.828-1.828l-1.937-.645a.361.361 0 0 1 0-.686l1.937-.645a2.89 2.89 0 0 0 1.828-1.828l.645-1.937zM3.794 1.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387A1.734 1.734 0 0 0 4.593 5.69l-.387 1.162a.217.217 0 0 1-.412 0L3.407 5.69A1.734 1.734 0 0 0 2.31 4.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387A1.734 1.734 0 0 0 3.407 2.31l.387-1.162zM10.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732L9.1 2.137a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L10.863.1z"/>
  </symbol>

  <symbol id="film" viewBox="0 0 16 16">
    <path d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z"/>
  </symbol>
</svg>
<div class="b-example-divider"></div>

<div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
  <div class="modal-dialog" role="document">
    <div class="modal-content rounded-5 shadow">
      <div class="modal-header p-5 pb-4 border-bottom-0">
      </div>

      <div class="modal-body p-5 pt-0">
       <h2>${MemberInfoz.email} 님의 정보</h2>
         <hr width='600' size='2' noshade>
<form name='fs' method="post" action="../member/mController?message=memberUpdateUserAdmin">
		<label for="email">EMAIL</label>
		<input type="email"  id="email" name="emails" value = "${MemberInfoz.email}" disabled>
		<input type="hidden" name ="email" value = "${MemberInfoz.email}" >
		<br>
		<label for="pwd">PASSWORD</label>
		<input type="password"  id="pwd" name="pwd" value = "${MemberInfoz.pwd}" placeholder="비밀번호">
		<br>
		<label for="name">NAME</label>
		<input type="text"  id="name"  name="name" value = "${MemberInfoz.memName}" disabled><br>
		<br>
		<label for="birth">BIRTH</label>
		<input type="date"  id="birth" name = "birth" value = "${MemberInfoz.birth}" disabled>	<br>
		<br>
		<label for="nick">NICKNAME</label>
		<input type="text"  id="nick"  name = "nick" value = "${MemberInfoz.nick}"  placeholder="닉네임">	<br>
		<br>
		<label for="phone">PHONENUMBER</label>
		<input type="tel"   id="phone" name = "phone" value = "${MemberInfoz.memPhone}" placeholder="전화번호">	<br>
		<br>
		<label for="anni">ANNI</label>
		<input type="date"  id="anni"  value = "${MemberInfoz.anni}"  disabled>	<br>		
		<br>
		<label for="sample_postcode">ADDRESS</label>
		<input type="button"class="form-control"  onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="form-control"  id="sample6_postcode"  name = "postNumber" value = "${MemberLocPostNumber} "placeholder="우편번호"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="form-control"  id="sample6_address" name="Address" value = "${MemberLocAddress}"placeholder="주소"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" 	class="form-control"  id="sample6_detailAddress" name="upAddress"  value="${MemberLocUpAddress}" placeholder="상세주소"><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  class="form-control"  id="sample6_extraAddress" placeholder="참고항목">
		<br>	
		<label for="gender">GENDER </label>
			<c:choose>
				<c:when test="${MemberInfoz.gender eq 0}">
					<input type="text"  class="form-control" name = "gender" value = "남자" placeholder="성별" disabled>
				</c:when>
				<c:otherwise>
					<input type="text"  class="form-control" name = "gender" value = "여자" placeholder="성별" disabled>
				</c:otherwise>
		</c:choose>
		
		<br>	
		<label for="solo">COUPLE </label>
		<input type="radio" id ="solo" name="couple" value="0" checked>
		<label for="solo">없음</label>
		<input type="radio" id ="coupleC" name="couple" value="1" >
		<label for="coupleC">커플</label><br>
		<br>	
		<label for="solo">LISENCE </label>
		<input type="radio" id ="defaultLicense" name="lisence" value="0" checked>
		<label for="defaultLicense">면허없음</label>
		<input type="radio" id ="licenseC" name="lisence" value="1" >
		<label for="licenseC">면허있음</label><br>
		<br>	
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="정보 변경">
</form>
</div>
</div>
</div>
</div>
</fieldset>
	<div class="b-example-divider"></div>
    <script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>