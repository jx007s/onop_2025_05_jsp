<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h2>BoardWriteForm 입니다.</h2>
<form action="BoardWriteReg" method="post" enctype="multipart/form-data">
	<table border="">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" /></td>
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
			<td>파일</td>
			<td><input type="file" name="upfile" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="50" rows="5"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="글작성" />
				<a href="<%=request.getContextPath() %>/board/BoardList">목록으로</a>
			</td>
		</tr>
	</table>
</form>