<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm</title>
</head>
<body>
<h1>로그인폼</h1>

<form action="loginReg.jsp" method="post">
	<fieldset><label>아이디<input type="text" name="pid" /></label></fieldset>
	<fieldset><label>암호<input type="text" name="pw" /></label></fieldset>
	<fieldset><input type="submit" value="로그인"/></fieldset>
</form>
</body>
</html>