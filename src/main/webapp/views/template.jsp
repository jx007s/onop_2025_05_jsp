<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mainUrl = (String)request.getAttribute("mainUrl");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrapper">
	<jsp:include page="header.jsp"/>
	<section><jsp:include page="<%=mainUrl %>"/></section>
	<jsp:include page="footer.jsp"/>
</div>
</body>
</html>