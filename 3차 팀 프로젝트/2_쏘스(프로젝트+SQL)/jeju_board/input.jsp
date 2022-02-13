<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="utf-8">
  <head>
    <title>reboard_write.jsp</title>
	<script>
	  function checkValue(){
	    if(document.input.subject.value == ""){
		  alert("제목을 입력해주세요");
		  return false;
		}
		if(document.input.content.value == ""){
		  alert("내용을 입력해주세요");
		  return false;
		}
		if(document.input.kategorie.value == ""){
		  alert("카테고리를 선택");
		  return false;
		}
		if(document.input.tag.value == ""){
		  alert("태그를 입력해주세요");
		  return false;
		}
		if(document.input.division.value == ""){
		  alert("지역을 선택하세요");
		  return false;
		}		
		document.input.submit();
	  }
	function filechk() {
		existExt = ".gif,.jpg,.png,.jpeg";
		existExArray = existExt.split(",");
		Temp_file1_name = document.input.photoName.value;
		let check = 0;
		if(Temp_file1_name !== "") {
		   	Temp_strExt1_num = Temp_file1_name.slice(Temp_file1_name.indexOf("\.")).toLowerCase();
		   	console.log(Temp_strExt1_num);
		   	for(i=0; i<existExArray.length; i++) {
			    if(Temp_strExt1_num === existExArray[i]) {
			     	check += 1;
			  	}
			}
		   	if(check == 0){
		   		alert("첨부파일 업로드가 불가능한 확장자입니다.");
		    	document.getElementById("input_file").reset;
		    	location.reload();
		   	  	return false;
		   	}
		 } 
	}

	</script>
  </head>
  <body>
  	<center>
	  <hr width="600" color="Maroon" size="2" noshade>
	    <font size="5" color="Navy"><b>글 쓰 기</b></font>
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="jeju_board.do?message=mainBoard&userid=">목록</a>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href='jeju_board.do?message=index'>메인</a>
	  <hr width="600" color="Maroon" size="2" noshade>
	</center>
      <!-------------------- re 변화 1 ------------------------------->
	  <form name="input" action="jeju_board.do?message=insert" method="post" enctype="multipart/form-data">
	  <!-------------------------------------------------------------->
	    <!-- <input type="hidden"  name="method" value="writeOk"> -->
	    <input type="hidden"  name="email" value="${sessionScope.user.id}">
		<input type="hidden"  name="nick" value="${sessionScope.user.nickname}">
	    <table align="center" width="600" cellspacing="1" cellpadding="3" border="1">
		  <tr>
		    <td align="center" width="20%">제목</td>
			<td align="center" width="80%">
			  <input type="text" name="subject" size="60">
			</td>
		  </tr>
		  <tr>
		    <td align="center" width="20%">내용</td>
			<td align="center" width="80%">
			  <textarea id ="content2" name="content" rows="10" cols="60"></textarea>
			</td>
		  </tr>
		  <tr>
		    <td align="center" width="20%">카테고리</td>
			<td align="center" width="80%">
			  <input type="text" name="kategorie" size="60" value="">
			</td>
		  </tr>
		  <tr>
		    <td align="center" width="20%">태그</td>
			<td align="center" width="80%">
			  <input type="text" name="tag" size="60" value="">
			</td>
		  </tr>
		  <tr>
		    <td align="center" width="20%">지역</td>
			<td align="center" width="80%">
			  <input type="text" name="division" size="60">
			</td>
		  </tr>
		  <tr>
		    <td align="center" width="20%">사진</td>
			<td width="80%">
				<input id="input_file" type="file" accept=".gif, .jpg, .png, .jpeg" name="photoName" onchange="javascript:filechk()"/>
			</td>
		  </tr>
		  <tr>
		    <td align="center" colspan="2">
			  <input type="button" value="전송하기" onclick="filechk(); checkValue();"/>
			  <input type="reset" value="다시쓰기">
			</td>
		  </tr>
		</table>
	  </form>
	  <hr width="600" color="Maroon" size="2" noshade>
	 
  </body>


<!-- board폴더안의 board_write.html을 가공하여 
     ROOT안에 reboard란 폴더를 만들고 그 하위에 저장한다.-->