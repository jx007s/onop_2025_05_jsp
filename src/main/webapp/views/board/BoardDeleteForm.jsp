<%@page import="model_p.PageDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	PageDTO pDTO = (PageDTO)request.getAttribute("pDTO");
%>    
<h2>삭제입니다.</h2>
<form action="BoardDeleteReg" method="post">
<input type="hidden" name="id" value="<%=id %>" />
<input type="hidden" name="nowPage" value="<%=pDTO.getNowPage() %>" />
	<table border="">
		<tr>
			<td>암호</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="삭제" />
				<a href="<%=request.getContextPath() %>/board/BoardDetail?id=<%=id %>&nowPage=<%=pDTO.getNowPage()%>">뒤로</a>
			</td>
		</tr>
	</table>
</form>