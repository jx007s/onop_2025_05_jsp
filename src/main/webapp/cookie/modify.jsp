<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 생성 : name은 같고 value 가 다름
	Cookie qwer = new Cookie("cname","장서건");
	
	
	//쿠키 클라이언트 에 같은 이름으로 저장 -> 수정
	response.addCookie(qwer);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키수정</title>
</head>
<body>
	<h1>쿠키수정</h1>
</body>
</html>