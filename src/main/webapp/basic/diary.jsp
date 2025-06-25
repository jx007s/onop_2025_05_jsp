<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
<style>
img{
	width:400px;
}
</style>
</head>

<%
	Date now = new Date();
	String title = new SimpleDateFormat("yyyy년 MM월").format(now);
	
	Calendar nowCa = Calendar.getInstance();
	
	// 이달의 마지막 날
	int last = nowCa.getActualMaximum(Calendar.DATE);
%>
<body>
	<h1>달력</h1>
	<table border="">
		<tr align="center">
			<td colspan="7"><h2><%=title %></h2></td>
		</tr>
		<tr>
			<td colspan="7">
				<img src="../fff/family.jpg" alt="" />
			</td>
		</tr>
		<tr align="center">
			<td>일</td>
			<td>월</td>
			<td>화</td>
			<td>수</td>
			<td>목</td>
			<td>금</td>
			<td>토</td>
		</tr>
		<tr>
		<% for(int i = 1; i<=last; i++) {%>
			<td><%=i %></td>
		<% } %>
		</tr>
	</table>
	
	
	
</body>
</html>