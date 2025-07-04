<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>uploadForm</title>
</head>
<body>
<h1>uploadForm</h1>

<h3>UploadReg1</h3>

<!--  enctype="application/x-www-form-urlencoded" 이 기본값 : 파일업로드 불가 -->
<form action="/jspPrj/UploadReg1" method="post" enctype="multipart/form-data">
	<table border="">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="pid" /></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="pname" /></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="upfile" multiple="multiple"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="전송" /></td>
		</tr>
	</table>
</form>

</body>
</html>