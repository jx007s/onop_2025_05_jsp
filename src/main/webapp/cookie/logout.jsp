<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie coo = new Cookie("pname","");
	coo.setMaxAge(0);
	
	response.addCookie(coo);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<h1>로그아웃</h1>
	<script type="text/javascript">
		alert("로그아웃되었습니다.")
		location.href="loginMain.jsp"
	</script>
</body>
</html>