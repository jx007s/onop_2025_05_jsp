<%@page import="model_p.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% BoardDTO dto = (BoardDTO)request.getAttribute("dto"); %>    
<h2>BoardReplyForm 입니다.</h2>

<form action="BoardReplyReg" method="post">
	<input type="hidden" name="id" value="<%=dto.getId() %>" />
	<table border="">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"  value="[Re]<%=dto.getTitle() %>"  /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="pname" /></td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="text" name="pw" /></td>
		</tr>
		
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="50" rows="5">[Re]<%=dto.getContent() %></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="답변" />
				<a href="<%=request.getContextPath() %>/board/BoardDetail?id=<%=dto.getId() %>">뒤로</a>
			</td>
		</tr>
	</table>
</form>