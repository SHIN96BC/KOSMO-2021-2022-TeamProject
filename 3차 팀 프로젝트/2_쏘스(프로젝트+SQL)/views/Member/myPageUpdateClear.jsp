<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script>
	if(${flag}){
		alert("정보 변경 성공");
	}else{
		alert("정보 변경 실패");
	}
	location.href="../member/mController?message=myPage";
</script>