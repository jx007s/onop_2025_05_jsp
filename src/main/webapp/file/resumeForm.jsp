<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서폼</title>
</head>
<body>
<h1>이력서폼</h1>
<form action="/jspPrj/ResumeReg" method="post" enctype="multipart/form-data">
	<fieldset><label>이름<input type="text" name="pname" /></label></fieldset>
	<fieldset><label>생년월일<input type="date" name="birth" /></label></fieldset>
	<fieldset><label>주소<input type="text" name="addr" /></label></fieldset>
	<fieldset><label>사진<input type="file" name="pic" /></label></fieldset>
	<fieldset><input type="submit" value="전송" /></fieldset>
</form>
</body>
</html>