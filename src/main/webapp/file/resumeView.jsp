<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서보기</title>
<style>
img{
	width:200px;
}
</style>
</head>
<body>
<h1>이력서보기</h1>
<table border>
	<tr><td>이름</td><td><%=request.getParameter("pname") %></td></tr>
	<tr><td>생년월일</td><td><%=request.getParameter("birth") %></td></tr>
	<tr><td>주소</td><td><%=request.getParameter("addr") %></td></tr>
	<tr><td>사진</td><td>
	<img alt="" src="../dsttt/<%=request.getParameter("pic") %>">
	</td></tr>
	
</table>
</body>
</html>