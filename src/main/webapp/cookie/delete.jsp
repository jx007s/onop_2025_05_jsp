<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie delCoo = new Cookie("cid","잘가");
	delCoo.setMaxAge(0);  //0초 만큼만 유지
	
	Cookie delCoo2 = new Cookie("cname","곧가요");
	delCoo2.setMaxAge(5);  //5초 만큼만 유지

	response.addCookie(delCoo);
	response.addCookie(delCoo2);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키삭제</title>
</head>
<body>
<h1>쿠키삭제</h1>
</body>
</html>