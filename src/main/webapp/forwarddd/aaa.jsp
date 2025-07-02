<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int rr = 200;
%>    
<%
	int qq = 10;

	request.setAttribute("ttt", "아기상어");
	request.setAttribute("sss", new int[]{11,22,33,44});
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>aaa입니다.</title>
</head>
<body>
	<h1>aaa입니다.</h1>
	qq : <%=qq %><br/>
	rr : <%=rr %><br/>
	<jsp:forward page="bbb.jsp">
		<jsp:param value="반담" name="nick"/>
	</jsp:forward>
</body>
</html>