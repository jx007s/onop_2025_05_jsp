<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bbb입니다.</title>
</head>
<body>
	<h1>bbb입니다.</h1>
<%--
 	qq : <%=qq %><br/>
	rr : <%=rr %><br/>	 
--%>
<%
	int [] arr = (int [])request.getAttribute("sss") ;
%>
ttt : <%=request.getAttribute("ttt") %><br/>
arr[1] : <%=arr[1] %><br/>
pid : <%=request.getParameter("pid") %><br/>
age : <%=request.getParameter("age") %><br/>
gender : <%=request.getParameter("gender") %><br/>
nick : <%=request.getParameter("nick") %><br/>
</body>
</html>