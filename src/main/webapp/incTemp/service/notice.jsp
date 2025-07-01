<%@page import="java.util.ArrayList"%>
<%@page import="basic_p.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>공지사항입니다.</h2>
<table border="">
	<tr>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
<% for(NoticeDTO dto : (ArrayList<NoticeDTO>)request.getAttribute("noticeData")) {%>	
	<tr>
		<td><%=dto.getTitle() %></td>
		<td><%=dto.getPname() %></td>
		<td><%=dto.getRegDate() %></td>
		<td><%=dto.getCnt() %></td>
	</tr>
<%} %>	
</table>