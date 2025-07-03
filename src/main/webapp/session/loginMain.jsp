<%@page import="basic_p.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인메인</title>
</head>
<body>
<h1>로그인메인</h1>
<%
	MemberDTO mem = (MemberDTO)session.getAttribute("pid");
	
	if(mem==null){
%>
<form action="loginReg.jsp" method="get">
	<label >id<input type="text" name="pid" /></label>
	<label >암호<input type="text" name="pw" /></label>
	<input type="submit" value="로그인" />
</form>
<%} else { %>
<%=mem.getPname() %>님 안녕하세요
<a href="logout.jsp">로그아웃</a>
<%} %>
</body>
</html>