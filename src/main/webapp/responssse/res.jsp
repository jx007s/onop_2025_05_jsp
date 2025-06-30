<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>res</title>
</head>
<body>
	<h1>res 입니다.</h1>
	<%
		HttpServletResponse res1 = response;
		ServletResponse res2 = pageContext.getResponse();
	%>
	response : <%=response %><br/>
	res1 : <%=res1 %><br/>
	res2 : <%=res2 %><br/>
</body>
</html>