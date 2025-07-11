<%@page import="model_p.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>BoardDetail 페이지 입니다.</h2>
<% BoardDTO dto = (BoardDTO)request.getAttribute("dto"); %>
<%-- <%=dto%> --%>
<style>
td > img {
	width : 200px;
}
</style>
<table border="">
	<tr>
		<td>제목</td>
		<td><%=dto.getTitle() %></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%=dto.getPname() %></td>
	</tr>
	<tr>
		<td>작성일</td>
		<td><%=dto.getRegDateStr() %></td>
	</tr>
	<% if(dto.getUpfile()  != null) { %>
	<tr>
		<td>파일</td>
		<td>
		<% if(dto.isImg()) {%>
			<img src="<%=request.getContextPath() %>/fff/<%=dto.getUpfile() %>" alt="" /> 
		<%}else{ %>
		<a href="<%=request.getContextPath() %>/DownloadReg?fileName=<%=dto.getUpfile() %>">
			<%=dto.getUpfile() %> 다운로드</a>
			 			
		<%} %>
		</td>
	</tr>
	<% } %>
	<tr>
		<td>조회수</td>
		<td><%=dto.getCnt() %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%=dto.getContentBr() %></td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<a href="<%=request.getContextPath() %>/board/BoardList">목록으로</a>
			<a href="<%=request.getContextPath() %>/board/BoardDeleteForm?id=<%=dto.getId() %>">삭제</a>
			<a href="<%=request.getContextPath() %>/board/BoardModifyForm?id=<%=dto.getId() %>">수정</a>
			<a href="<%=request.getContextPath() %>/board/BoardReplyForm?id=<%=dto.getId() %>">답변</a>
		</td>
	</tr>
</table>