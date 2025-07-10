<%@page import="model_p.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>BoardList 페이지 입니다.</h2>
<%
	ArrayList<BoardDTO> mainData = (ArrayList<BoardDTO>)request.getAttribute("mainData");  
%>
<%-- <%=mainData%> --%>
<table border="">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>조회수</td>
	</tr>
<%
	int cnt = 1;
	for(BoardDTO dto : mainData){ %>	
	<tr>
		<td><%=cnt++ %></td>
		<td>
		<a href="BoardDetail?id=<%=dto.getId() %>"><%=dto.getTitle() %></a>
		</td>
		<td><%=dto.getPname() %></td>
		<td><%=dto.getRegDateStr() %></td>
		<td><%=dto.getCnt() %></td>
	</tr>
<% } %>	
	<tr>
		<td colspan="5" align="right">
			<a href="BoardWriteForm">글쓰기</a>
		</td>
	</tr>
</table>