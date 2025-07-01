<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String main = "info";

	if(request.getParameter("main")!=null){
		main = request.getParameter("main");
	}

	String mainUrl = "service/"+main+".jsp";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inc회사입니다.</title>
</head>
<body>
<h1>inc회사입니다.</h1>
<table border="">
	<tr>
		<td>
			<jsp:include page="header.jsp"/>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="<%=mainUrl %>"/>
		</td>
	</tr>
	<tr>
		<td>
			<jsp:include page="footer.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>