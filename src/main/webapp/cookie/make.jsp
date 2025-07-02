<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 생성
	Cookie coo1 = new Cookie("cname","장동건");
	Cookie coo2 = new Cookie("cid","aaa");
	//Cookie coo3 = new Cookie("age",56);  문자열, 문자열 가능
	
	//쿠키 클라이언트 에 저장
	response.addCookie(coo1);
	response.addCookie(coo2);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키생성</title>
</head>
<body>
	<h1>쿠키생성</h1>
</body>
</html>