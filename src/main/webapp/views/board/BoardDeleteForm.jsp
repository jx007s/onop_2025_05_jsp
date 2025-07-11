<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
%>    
<h2>삭제입니다.</h2>
<form action="BoardDeleteReg" method="post">
	<table border="">
		<tr>
			<td>암호</td>
			<td><input type="text" name="pw" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="삭제" />
				<a href="<%=request.getContextPath() %>/board/BoardDetail?id=<%=id %>">뒤로</a>
			</td>
		</tr>
	</table>
</form>