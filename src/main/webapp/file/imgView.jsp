<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>imgView</title>
<style>
img{
	width:200px;
}
</style>
</head>
<body>
	<h1>imgView</h1>
	<img alt="" src="../dsttt/<%=request.getParameter("gImg")%>">
</body>
</html>