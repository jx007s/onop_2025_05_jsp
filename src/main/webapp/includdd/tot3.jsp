<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tot3</title>
</head>
<body>
<h1>tot3입니다.</h1>
 	<%
 		Object pc_ice = pageContext.getAttribute("ice");
 		Object req_ice = request.getAttribute("ice");
 		Object se_ice = session.getAttribute("ice");
 		Object app_ice = application.getAttribute("ice");
 	%>
 	pc_ice : <%=pc_ice %><br/>
 	req_ice : <%=req_ice %><br/>
 	se_ice : <%=se_ice %><br/>
 	app_ice : <%=app_ice %><br/>
</body>
</html>