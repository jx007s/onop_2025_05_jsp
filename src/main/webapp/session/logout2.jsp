<%@page import="basic_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDTO mem = (MemberDTO)session.getAttribute("pid");
	//session.removeAttribute("pid"); //특정 attribute 삭제 :pid 만 삭제
	session.invalidate();		//세션 초기화 - 세션 id 등 모두 변경
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<script type="text/javascript">
	alert("<%=mem.getPname()%>님 로그아웃 되었습니다.")
	location.href="loginMain2.jsp"
</script>
</body>
</html>