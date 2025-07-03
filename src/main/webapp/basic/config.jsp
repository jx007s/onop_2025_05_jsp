<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>config</title>
</head>
<body>
<h1>config</h1>

<%
// config
// Servelt을 초기화 하는 동안 참조하는 정보를 전달하는 역할

	ServletConfig sc1 = config;
	ServletConfig sc2 = pageContext.getServletConfig();
%>
<%=config %><br/>
<%=sc1 %><br/>
<%=sc2 %><br/>
<%=config.getServletName() %><br/>
</body>
</html>