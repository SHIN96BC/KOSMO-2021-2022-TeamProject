<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>JEJU FRIENDS</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/modals/">
	  <link rel="stylesheet" href="css/register.css">
    

    <!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

    <style>
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
    
  </head>
  <body>
    
<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="bootstrap" viewBox="0 0 118 94">
 
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

  <symbol id="github" viewBox="0 0 16 16">
    <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
  </symbol>

</svg>
<div class="b-example-divider"></div>

<div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
  <div class="modal-dialog" role="document">
    <div class="modal-content rounded-5 shadow">
      <div class="modal-header p-5 pb-4 border-bottom-0">
        <!-- <h5 class="modal-title">Modal title</h5> -->
        <center>
        
   <h2>JEJU FRIENDS 마이페이지</h2>
   
   <c:choose>
	<c:when test="${Member_Grade == 'admin'}">
		<hr width='600' size='2' noshade>
		<span><a href="../member/mController?message=myPage" class="basicLogin_item">마이페이지</a> </span>
		<span><a href="../member/mController?message=memberManagement" class="basicLogin_item">회원관리</a> </span>
		<span><a href='../member/mController?message=index' class="basicLogin_item">메인으로</a> </span>
		<span><a href='../member/mController?message=logout' class="basicLogin_item">로그아웃</a> </span>
		<hr width='600' size='2' noshade>
	</c:when>
	<c:when test="${ not empty Member_Email}">
		<hr width='600' size='2' noshade>	
		<span><a href="../member/mController?message=myPage" class="basicLogin_item">마이페이지</a> </span>
		<span><a href='../member/mController?message=index' class="basicLogin_item">메인으로</a> </span>
		<span><a href='../member/mController?message=logout' class="basicLogin_item">로그아웃</a> </span>
		<hr width='600' size='2' noshade>
	</c:when>
	<c:otherwise>
		<hr width='600' size='2' noshade>
		<span><a href="../member/mController?message=loginform" class="basicLogin_item">로그인</a> </span>
		<span><a href='../member/mController?message=index' class="basicLogin_item">메인으로</a> </span>
		<span><a href="../member/mController?message=signform" class="basicLogin_item">회원가입</a> </span>
		<hr width='600' size='2' noshade>
	</c:otherwise>
</c:choose>
    	  
      </div>
        </center>
  <fieldset>
    <div class="modal-body p-5 pt-0">
       <h2>${MemberInfoz.email} 님의 정보</h2>
         <hr width='600' size='2' noshade>
      <div class="modal-body p-5 pt-0">
      <form name='fs' method="post" action="../member/mController?message=myPageUpdate">
          <div class="form-floating mb-3">
          <input type="hidden" name ="email" value = "${MemberInfoz.email}" >
            <label for="email">Email address</label>
            <input type="email" class="form-control rounded-4 " id="email" name="emails" value = "${MemberInfoz.email}" disabled>
            <br>
          </div>
      
          <div class="form-floating mb-3">
            <label for="pwd">Password</label>
          	<input type="password" class="form-control rounded-4" id="pwd" name ="pwd" value = "${MemberInfoz.pwd}" placeholder="Password" minlength="8">
         
          </div>
          
          <div class="form-floating mb-3">
            	<label for="pwdCheck">PasswordCheck</label>
          	<input type="password" class="form-control rounded-4" id="pwdCheck" name="pwdCheck" placeholder="비밀번호확인" minlength="8">
          
     	  </div>
     	     <div id='checkPw'></div>
     	  <div class="form-floating mb-3">
     	       <label for="name">Name</label>
         	 <input class="form-control rounded-4" type="text"  id="name"  name="name" value = "${MemberInfoz.memName}" disabled placeholder="이름" minlength="1">
        	
     	  </div>
     	  
     	       	  
     	  <div class="form-floating mb-3">
     	  
     	       <label for="birth">Brith</label>
         	 <input class="form-control rounded-4" type="date"  id="birth"  name = "birth" value = "${MemberInfoz.birth}" disabled placeholder="생일">
        
     	  </div>

      	  <div class="form-floating mb-3">
      	       <label for="nick">Nickname</label>
         	 <input class="form-control rounded-4" type="text"    id="nick"  name = "nick" value = "${MemberInfoz.nick}"  minlength="2">
        	
     	  </div>
     	  
     	  
     	  <div class="form-floating mb-3">
     	       <label for="phone">Phone</label>
         	 <input class="form-control rounded-4" type="tel"   id="phone" name = "phone" value = "${MemberInfoz.memPhone}" placeholder="전화번호">
        	
     	  </div>    	
     	   
     	  <div class="form-floating mb-3">
     	     	 <label for="anni">Anni</label>
         	 <input class="form-control rounded-4" type="date"  id="anni"  value = "${MemberInfoz.anni}"  disabled>
     	  </div>    
   
     	  
     	            
          <div class="form-floating mb-3">
              <label for="sample6_postcode">PostNumber</label>
         	  <input type="text"  class="form-control"  id="sample6_postcode"  name = "postNumber" value = "${MemberLocPostNumber} " placeholder="우편번호">
         	 	 <input type="button" class="form-control , w-100 mb-2 btn btn-lg rounded-4 btn-primary"  onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
        	
     	  </div>    
     	  
    
     	  <div class="form-floating mb-3">
     	     <label for="sample6_address">Address</label>
         	 <input type="text"  class="form-control"  id="sample6_address" name="Address"  value = "${MemberLocAddress}" placeholder="주소">
        	 
     	  </div>    
         	
          <div class="form-floating mb-3">
             <label for="sample6_detailAddress">DetailAddress</label>
         	 <input type="text" 	class="form-control"  id="sample6_detailAddress" name="upAddress"  value="${MemberLocUpAddress}" placeholder="상세주소">
        	 
     	  </div>    
     	  
     	  <div class="form-floating mb-3">
     	     <label for="sample6_extraAddress">ExtraAddress</label>
         	 <input type="text" 	class="form-control"  id="sample6_extraAddress" >
        	 
     	  </div>
     	 <div class="form-floating mb-3">
     		 <label for="gender">Gender  </label>
			<c:choose>
				<c:when test="${MemberInfoz.gender eq 0}">
					<input type="text"  class="form-control" name = "gender" value = "남자" placeholder="성별" disabled>
				</c:when>
				<c:otherwise>
					<input type="text"  class="form-control" name = "gender" value = "여자" placeholder="성별" disabled>
			
				</c:otherwise>
				</c:choose>
				</td>
		</div>

 
		 <br>
		

		  <div class="btn-group2" role="group" aria-label="Basic radio toggle button group">
			  <input type="radio" class="btn-check" id ="solo" name="couple" value="0" autocomplete="off" checked>
			  <label class="btn btn-outline-primary" for="solo">솔로</label>
			
			  <input type="radio" class="btn-check"  id ="coupleC" name="couple" value="1" autocomplete="off">
			  <label class="btn btn-outline-primary" for="coupleC">커플</label>
		  </div>
		
 
		 <br>
		 

		  <div class="btn-group1" role="group" aria-label="Basic radio toggle button group">
			  <input type="radio" class="btn-check" id ="defaultLicense" name="lisence" value="0" autocomplete="off" checked>
			  <label class="btn btn-outline-primary" for="defaultLicense">면허없음</label>
			
			  <input type="radio" class="btn-check"  id ="licenseC" name="lisence" value="1" autocomplete="off">
			  <label class="btn btn-outline-primary" for="licenseC">면허있음</label>
		  </div>
		
  
		 <br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="정보변경">
        </form>
      </div>
    </div>
  </div>
</div>
</fieldset>
<div class="b-example-divider"></div>
    <script src="js/bootstrap.bundle.min.js"></script>
  </body>
  <script
		   src="https://code.jquery.com/jquery-3.5.1.min.js"
		   integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
		   crossorigin="anonymous">
	</script>
	<script>
	$('#checkEmailbutton').on("click" , (e) => {
		const email = $('#email').val();
		e.preventDefault();
		console.log('btn click');
		if(email.length == 0 || email == null ) return alert("이메일을 입력하세요.");
		$.ajax({
			type:'post',
			async:true,
			url:'http://localhost:8080/project/member/mController?message=emailCheck',
			dataType:'text',
			data:{email:email},
			success: function(data, textStatus) {
				if (data == 1){
					$('#messages').text('사용할 수 있는 이메일입니다.');
					$('#checkEmailbutton').prop('disabled , true');
				} else {
					$('#messages').text('이미 사용 중인 아이디입니다.');
				}
			},
			error:function(data, textStatus){
				$('#messages').text('error');
			}
		
		})
	} )
	</script>
	<script src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
			let pwdChecked = false;
			$("#pwdCheck").focusout(function(){
					pwdCheckedf($(this).val())
			})
			function pwdCheckedf(pw){
				if(pw==""){
					$("#email").text("");
					return;
				}
							
				if($('#pwd').val()!=$('#pwdCheck').val()){
					$("#checkPw").html("비밀번호가 일치하지 않습니다.");
					$("#checkPw").attr('color', 'red');
					$("#pwdCheck").val('');
					$("#pwdCheck").focus();
					pwdChecked = false;
				} else {
					$("#checkPw").html("비밀번호가 일치합니다.");
					$("#checkPw").attr('color' , 'blue');
					pwdChecked = true;
					}	
				}				
	</script>
</html>