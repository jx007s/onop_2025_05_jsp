<%@page import="model_p.PageDTO"%>
<%@page import="model_p.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% BoardDTO dto = (BoardDTO)request.getAttribute("dto"); 
	PageDTO pDTO = (PageDTO)request.getAttribute("pDTO");
%>    
<h2>BoardModifyForm 입니다.</h2>
<form action="BoardModifyReg" method="post">
	<input type="hidden" name="id" value="<%=dto.getId() %>" />
	<input type="hidden" name="nowPage" value="<%=pDTO.getNowPage() %>" />
	<table border="">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"  value="<%=dto.getTitle() %>"  /></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="pname"  value="<%=dto.getPname() %>" /></td>
		</tr>
		<tr>
			<td>암호</td>
			<td><input type="text" name="pw" /></td>
		</tr>
		
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="50" rows="5"><%=dto.getContent() %></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="글수정" />
				<a href="<%=request.getContextPath() %>/board/BoardDetail?id=<%=dto.getId() %>&nowPage=<%=pDTO.getNowPage()%>">뒤로</a>
			</td>
		</tr>
	</table>
</form>