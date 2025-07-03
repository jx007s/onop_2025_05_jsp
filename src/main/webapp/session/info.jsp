<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보</title>
</head>
<body>
<h1>세션정보</h1>
id : <%=session.getId() %> <br/>
create : <%=sdf.format(session.getCreationTime()) %><br/>
access : <%=sdf.format(session.getLastAccessedTime()) %><br/>
</body>
</html>