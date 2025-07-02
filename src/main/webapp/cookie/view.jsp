<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie [] arr = request.getCookies();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키보기</title>
</head>
<body>
	<h1>쿠키보기</h1>
	<% for(Cookie coo: arr)  {%>
	<%=coo.getName() %> : <%=coo.getValue() %> <br/> 
	<%} %>
</body>
</html>