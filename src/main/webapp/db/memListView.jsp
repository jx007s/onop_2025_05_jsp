<%@page import="db_p.Mem2DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Mem2DTO> memData = (ArrayList<Mem2DTO>)request.getAttribute("memData");
%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mem2 목록입니다.</title>
</head>
<body>
	<h2>mem2 목록입니다.</h2>
<table border="">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>생일</td>
		<td>키</td>
		<td>메일번호</td>
	</tr>
	<% for(Mem2DTO dto : memData) {%>
	<tr>
		<td><%=dto.getId() %></td>
		<td><%=dto.getName() %></td>
		<td><%=dto.getBirth() %></td>
		<td><%=dto.getHeight() %></td>
		<td><%=dto.getMail() %></td>
	</tr>
	<% } %>
	<tr>
		<td colspan="5" align="right"><a href="MemJoinForm">회원가입</a></td>
	</tr>
</table>
</body>
</html>