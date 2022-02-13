<%@ page contentType="text/html; charset=UTF-8" import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--<c:if test="${empty sessionScope.user}">
	location.href='boardclient.do?b=index';
</c:if>-->

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
	<hr width='1000' size='2' noshade>
	<h2>Board</h2>
		&nbsp;&nbsp;&nbsp;
	<a href='jeju_board.do?message=input&type='>글쓰기</a>
		&nbsp;&nbsp;&nbsp;
	<a href='jeju_board.do?message=index'>인덱스</a>
	<hr width='1000' size='2' noshade>
	</center>
<form>
<input type="hidden" name="b" value="list" />
<select id="option" name="ps" onChange="sumbit()" style="margin-left:103;">
	<option value="5" selected>=== 페이지 선택 ===</option>
	<option value="10">페이지 10개씩 보기</option>
	<option value="15">페이지 15개씩 보기</option>
</select>
</form>
	<table border='1' width='1000' align='center' cellpadding='2'>
	<tr>
		<th align='center' width='5%'>글번호</th>
		<th align='center' width='10%'>작성자</th>
		<th align='center' width='15%'>이메일</th>
		<th align='center' width='25%'>글제목</th>
		<th align='center' width='10%'>날짜</th>
		<th align='center' width='10%'>조회수</th>
	</tr>


<c:if test="${empty listAll}">
	<tr>
		<td colspan="6" style="text-align:center">데이터가 하나도 없어요</td>
	</tr>
</c:if>

<!--
<c:forEach items="${list}" var="board">
	<tr>
		<td align='center'>${board.postnumber}</td>
		<td align='center'>${board.writernickname}</td>
		<td align='center'>${board.writerid}</td>
		<td>
		<a href='boardclient.do?b=content&postNumber=${board.postnumber}'>${board.postsubject}</a>
		</td>
		<td align='center'>${board.pdate}</td>
		<td align='center'>${board.views}</td>
	</tr>
</c:forEach>
-->
<% 
 	/*
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	long ps = (Long)request.getAttribute("ps");
	long cp = (Long)request.getAttribute("cp");
	if(ps == -1) ps = 5;
	if(cp == -1) cp = 1;
	long size = (Long)request.getAttribute("size");
	if(list != null){
		long listSize = list.size();
		if(list.size() != 0){
			for(Board board: list){
				*/
%>
<c:forEach items="${listAll}" var="board">
				<tr>
					<td align='center'>${board.bnum}</td>
					<td align='center'>${board.nick}</td>
					<td align='center'>${board.kategorie}</td>
					<td>
					<a href='boardclient.do?message=content&postNumber=${board.bnum}'>${board.subject}</a>
					</td>
					<td align='center'>${board.bdate}</td>
					<td align='center'></td>
				</tr>
				
</c:forEach>
<% 
/*
			}
		}
	}
	ArrayList<Long> cpList = (ArrayList<Long>)request.getAttribute("cpList");
	long maxCp = 1;
	long minCp = 1;
	for(long lo: cpList){
		if(lo>maxCp){
			maxCp = lo;
		}
		if(lo<minCp){
			minCp = lo;
		}
	}
	*/
%>				
	<tr>
		<td colspan="3" align="center">

			<a id="back" style="display:inline-block" href="jeju_board.do?message=list&cp=''&ps=''">◀이전</a>
	          	|
	        <a id="page1" href="jeju_board.do?message=list&cp=''&ps=''">1</a>
	        <a id="page2" style="display:inline-block" href="jeju_board.do?message=list&cp=''&ps=''">2</a>
	        <a id="page3" style="display:inline-block" href="jeju_board.do?message=list&cp=''&ps='"><b>3</b></a>
			<a id="page4" style="display:inline-block" href="jeju_board.do?message=list&cp=''&ps=''">4</a>
			<a id="page5" style="display:inline-block" href="jeju_board.do?message=list&cp=''&ps=''">5</a>
				|
	        <a id="front" style="display:inline-block" href="jeju_board.do?message=list&cp=''&ps=''">이후▶</a>
			&nbsp;&nbsp;&nbsp;
				''page/''pages
			  </td>
			  <td colspan="2" align="center">
			    총 게시물 수 : ''
		</td>
	</tr>
	<script language=javascript>
       	let back = document.getElementById('back');
       	let page1 = document.getElementById('page1');
       	let page2 = document.getElementById('page2');
       	let page3 = document.getElementById('page3');
       	let page4 = document.getElementById('page4');
       	let page5 = document.getElementById('page5');
   		let front = document.getElementById('front');
   		
		if('' < 2){
			back.style.display = 'none';
	   		page1.style.display = 'inline-block';
	   		page2.style.display = 'inline-block';
	   		page3.style.display = 'inline-block';
	   		page4.style.display = 'inline-block';
	   		page5.style.display = 'inline-block';
		}else if('' == ${maxPage} && '' == ''){
			back.style.display = 'inline-block';
	   		page1.style.display = 'inline-block';
	   		page2.style.display = 'inline-block';
	   		page3.style.display = 'inline-block';
	   		page4.style.display = 'inline-block';
	   		page5.style.display = 'inline-block';
	   		front.style.display = 'none';
		}else if(''==3){
			
		}else if(''==4){
			
		}else if(''==5){
			
		}
   		
    </script>
</table>
<hr width='1000' size='2' noshade>
</center>